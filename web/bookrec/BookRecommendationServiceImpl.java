package bookrec;
import java.nio.charset.StandardCharsets;
//import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
//import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;

import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import javax.xml.parsers.*;

import org.apache.commons.codec.binary.Hex;
import org.xml.sax.*;
import org.xml.sax.helpers.*;

import java.io.IOException;
import java.io.InputStream;
import java.io.ByteArrayInputStream;

import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.DocumentBuilder;

import org.w3c.dom.Document;
import org.w3c.dom.NodeList;
import org.w3c.dom.Node;
import org.w3c.dom.Element;

public class BookRecommendationServiceImpl implements BookRecommendationService {

	OkHttpClient client = new OkHttpClient();
	private String ASINnum="";

	public BookRecommendationServiceImpl() {
	}

	public ArrayList<Book> getRelatedBooks(String ISBN) {
		String currentBookXML;

		try {
			currentBookXML = run(buildLookupURL(ISBN));
		} catch (IOException e) {
			e.printStackTrace();
			System.out
					.println("Failure to correctly run book lookup for book recommendations");
			return null;
		}

		String ASIN = getASIN(currentBookXML);

		String relatedBooksXML;

		try {
			relatedBooksXML = run(buildSimilarityURL(ASIN));
		} catch (IOException e) {
			e.printStackTrace();
			System.out
					.println("Failure to correctly run similarity lookup on books");
			return null;
		}

		return buildBooks(relatedBooksXML);
	}

	// Parses the related books XML and constructs the Books needed
	public ArrayList<Book> buildBooks(String XML) {
		ArrayList<Book> toReturn = new ArrayList<Book>();

		DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
		DocumentBuilder dBuilder = null;
		try {
			dBuilder = dbFactory.newDocumentBuilder();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error occured in constructing dbFactory in buildBooks");
			return null;
		}
		String fixedXML = removeUTF8BOM(XML);
		InputStream stream = new ByteArrayInputStream(fixedXML.getBytes(StandardCharsets.UTF_8));
		Document doc = null;
		try {
			doc = dBuilder.parse(stream);
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error occured in parsing XML in buildBooks");
			return null;
		}
		
		NodeList nList = doc.getElementsByTagName("Item");
		
		for (int temp = 0; temp < nList.getLength(); temp++) {
			 
			String medURL = "UNINIT";
			String name = "UNINIT";
			String isbn = "UNINIT";
			String link = "UNINIT";
			String author = "UNINIT";
			String pubDate = "UNINIT";
			//String ISBNnum;
			
			Node nNode = nList.item(temp);
			//Node urlChild = nNode.
			NodeList children = nNode.getChildNodes();
			for(int j = 0; j < children.getLength(); j++)
			{
				Node nChild = children.item(j);
				if(nChild.getNodeName().equals("DetailPageURL"))
				{
					link = nChild.getTextContent();
				}
				if(nChild.getNodeName().equals("MediumImage"))
				{
					NodeList children2 = nChild.getChildNodes();
					for(int k=0; k<children2.getLength(); k++)
					{
						Node nChild2 = children2.item(k);
						if(nChild2.getNodeName().equals("URL"))
						{
							medURL = nChild2.getTextContent();
						}
					}
				}
				if(nChild.getNodeName().equals("ItemAttributes"))
				{
					NodeList children2 = nChild.getChildNodes();
					for(int k=0; k<children2.getLength(); k++)
					{
						Node nChild2 = children2.item(k);
						if(nChild2.getNodeName().equals("Title"))
						{
							name = nChild2.getTextContent();
						}
						if(nChild2.getNodeName().equals("Author"))
						{
							author = nChild2.getTextContent();
						}
						if(nChild2.getNodeName().equals("PublicationDate"))
						{
							pubDate = nChild2.getTextContent();
						}
						if(nChild2.getNodeName().equals("ISBN"))
						{
							isbn = nChild2.getTextContent();
						}
					}
				}
			}
			Book toAdd = new Book(name, medURL, isbn, link, author, pubDate);
			toReturn.add(toAdd);
			/*System.out.println(name);
			System.out.println(medURL);
			System.out.println(isbn);
			System.out.println();*/
			//System.out.println(pubDate);
			/*if (nNode.getNodeType() == Node.ELEMENT_NODE) {
	 
				Element eElement = (Element) nNode;
	 
				System.out.println("Staff id : " + eElement.getAttribute("id"));
				System.out.println("First Name : " + eElement.getElementsByTagName("firstname").item(0).getTextContent());
				System.out.println("Last Name : " + eElement.getElementsByTagName("lastname").item(0).getTextContent());
				System.out.println("Nick Name : " + eElement.getElementsByTagName("nickname").item(0).getTextContent());
				System.out.println("Salary : " + eElement.getElementsByTagName("salary").item(0).getTextContent());
			}*/
		}
		
		return toReturn;
	}

	// Parses the given XML to find the ASIN number of the product
	public String getASIN(String XML) {
		SAXParserFactory factory = SAXParserFactory.newInstance();
		SAXParser saxParser = null;
		try{
		saxParser = factory.newSAXParser();
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error at buildASINHandler method, when creating the SAX parser");
			return "";
		}
		String fixedXML = removeUTF8BOM(XML);
		//String fixedXML =  XML.trim().replaceFirst("^([\\W]+)<","<");
		InputStream stream = new ByteArrayInputStream(fixedXML.getBytes(StandardCharsets.UTF_8));
		try {
			saxParser.parse(stream, buildASINHandler());
		}
		catch(Exception e) {
			e.printStackTrace();
			System.out.println("Error occured when parsing ASIN XML stream");
			return "";
		}
		return ASINnum;
	}

	/*private DefaultHandler buildRelatedHandler() {
		return null;
	}*/

	private DefaultHandler buildASINHandler() {

		DefaultHandler handler = new DefaultHandler() {

			boolean asin = false;

			public void startElement(String uri, String localName,
					String qName, Attributes attributes) throws SAXException {

				//System.out.println("Start Element :" + qName);

				if (qName.equalsIgnoreCase("ASIN")) {
					asin = true;
				}

			}

			public void endElement(String uri, String localName, String qName)
					throws SAXException {

				//System.out.println("End Element :" + qName);

			}

			public void characters(char ch[], int start, int length)
					throws SAXException {

				if (asin) {
					ASINnum = new String(ch, start, length);
					asin = false;
				}
			}
		};
		return handler;
	}

	public String buildSimilarityURL(String ASIN) {
		/*
		 * java.util.Date date= new java.util.Date(); Timestamp stamp = new
		 * Timestamp(date.getTime()); String timestamp=stamp.toString(); return
		 * "http://webservices.amazon.com/onca/xml?"+
		 * "Service=AWSECommerceService&"+
		 * "AWSAccessKeyId=AKIAJ4EQIRF3AZ67BOTQ&"+
		 * "Operation=SimilarityLookup&ItemId="+ASIN+"&"+
		 * "ResponseGroup=Images"+ "&Timestamp="+timestamp+
		 * "&Signature=[Request Signature]";
		 */
		TimeZone tz = TimeZone.getTimeZone("UTC");
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
		df.setTimeZone(tz);
		// String timestamp = df.format(new Date());
		Map<String, String> params = new HashMap<String, String>();
		params.put("Service", "AWSECommerceService");
		params.put("AWSAccessKeyId", "AKIAJA2KNYRXCOKY6TVQ"); // nove013-20
		params.put("AssociateTag", "nove013-20");
		params.put("Operation", "SimilarityLookup");
		params.put("ItemId", ASIN);
		params.put("ResponseGroup", "Images,ItemAttributes");
		// params.put("SearchIndex", "Books");
		// String sha256hex =
		// org.apache.commons.codec.digest.DigestUtils.sha256Hex("AKIAJ4EQIRF3AZ67BOTQ");
		SignedRequestsHelper helper = new SignedRequestsHelper();
		return helper.sign(params);
	}

	public String buildLookupURL(String ISBN) {
		TimeZone tz = TimeZone.getTimeZone("UTC");
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
		df.setTimeZone(tz);
		// String timestamp = df.format(new Date());
		Map<String, String> params = new HashMap<String, String>();
		params.put("Service", "AWSECommerceService");
		params.put("AWSAccessKeyId", "AKIAJA2KNYRXCOKY6TVQ"); // nove013-20
		params.put("AssociateTag", "nove013-20");
		params.put("Operation", "ItemLookup");
		params.put("ItemId", ISBN);
		params.put("IdType", "ISBN");
		params.put("SearchIndex", "Books");
		// String sha256hex =
		// org.apache.commons.codec.digest.DigestUtils.sha256Hex("AKIAJ4EQIRF3AZ67BOTQ");
		SignedRequestsHelper helper = new SignedRequestsHelper();
		return helper.sign(params);
		/*
		 * return "http://webservices.amazon.com/onca/xml?"+
		 * "Service=AWSECommerceService&"+
		 * "AWSAccessKeyId=AKIAJ4EQIRF3AZ67BOTQ&"+ "Operation=ItemLookup&"+
		 * "ItemId="+ISBN+"&"+ "IdType=ISBN&"+ "SearchIndex=Books"+
		 * "&Timestamp="+timestamp+
		 * "&Signature=2b1abb41eb9e14c2729b99ecaeb46b57177a311072571039ca064fd6b466eeb0"
		 * ;
		 */
	}

       
        
        
        
        
        
        
        
        
        
        
        
           
        
        
        
        
	private String run(String url) throws IOException {
		Request request = new Request.Builder().url(url).build();

		Response response = client.newCall(request).execute();
		return response.body().string();
	}
	
    public static final String UTF8_BOM = "\uFEFF";
	private static String removeUTF8BOM(String s) {
        if (s.startsWith(UTF8_BOM)) {
            s = s.substring(1);
        }
        return s;
    }
}
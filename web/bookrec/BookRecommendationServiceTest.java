package bookrec;

public class BookRecommendationServiceTest {
		public static void main(String[] args)
		{
			BookRecommendationServiceImpl test = new BookRecommendationServiceImpl();
			//.out.println(test.getRelatedBooks("0553593714"));
			test.getRelatedBooks("1580087892");
		}
}

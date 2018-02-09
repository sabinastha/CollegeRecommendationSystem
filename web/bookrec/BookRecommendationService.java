package bookrec;
import java.util.ArrayList;

public interface BookRecommendationService {
	//Returns a list of up to 10 books similar to the book whose ISBN number is passed in.
	public ArrayList<Book> getRelatedBooks(String ISBN);
}

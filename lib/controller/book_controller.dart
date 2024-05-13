import 'package:grimorio/dao/book_database.dart';
import 'package:grimorio/models/google_book.dart';
import 'package:grimorio/models/personal_book.dart';

class BookController {
  PersonalBookDatabase db = PersonalBookDatabase();

  void addBook(GoogleBook googleBook, String dayStarted, String dayFinished,
      String comments) {
    PersonalBook newBook = PersonalBook(
        dayStarted: dayStarted,
        dayFinished: dayFinished,
        comments: comments,
        googleBook: googleBook);

    db.save(newBook);
  }
}

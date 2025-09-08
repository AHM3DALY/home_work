/*
Q4. Multiple Objects - Create a class Book with attributes title and author. - Create two objects from
the Book class and print a message for each one.
*/
void main() {
  Book myfirstBook = Book();
  print('MY FIRST BOOK  DONE');
  Book mySecondBook = Book();
  print('MY Second  BOOK DONE');
}

class Book {
  String? title;
  String? author;
}

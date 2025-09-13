/*
Q4. Update Attribute with a Method - Create a class Book with attributes title and pages. - Add a
method addPages(int extraPages) that increases the pages. - In main(), create a book and use the
method to update its pages, then print the result.
*/
void main() {
  Book book1 = Book('mybook', 145);
  print('${book1.title}has${book1.pages}');
  book1.addPages(75);
  print('${book1.title}has${book1.pages}');
}

class Book {
  String title;
  int pages;
  Book(this.title, this.pages);
  void addPages(int extraPages) {
    pages += extraPages;
  }
}

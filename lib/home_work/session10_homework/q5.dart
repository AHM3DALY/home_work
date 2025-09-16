/*
Q5
Create a class Book with private fields _title and _pages.
- Add setters: reject empty titles and pages ≤ 0.
- Add a getter title and a computed getter readingTime that assumes 2 minutes per page.
- In main(), create a book, print its title and estimated reading time
*/
void main() {
  Book b = Book();

  b.title = 'Dart Programming';
  b.pages = 120;

  print('Book: ${b.title}');
  print('Estimated reading time: ${b.readingTime} minutes');

  // تجربة إدخال قيم غير صحيحة
  b.title = '';
  b.pages = 0;
}

class Book {
  String _title = '';
  int _pages = 0;

  // Setter للعنوان
  set title(String value) {
    if (value.isEmpty) {
      print('Invalid title');
    } else {
      _title = value;
    }
  }

  // Setter لعدد الصفحات
  set pages(int value) {
    if (value <= 0) {
      print('Invalid page count');
    } else {
      _pages = value;
    }
  }

  // Getter للعنوان
  String get title => _title;

  // Getter محسوب لوقت القراءة (2 دقيقة لكل صفحة)
  int get readingTime => _pages * 2;
}

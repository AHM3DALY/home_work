/*

Write a Dart program that simulates a simple router using a switch statement on a string path ('/',
'/products', '/profile', or other). Handle each case with appropriate output, including maps and null
safety where needed.
 */

void main() {
  String? path;
  Map<String, String> pages = {
    '/': 'Home Page',
    '/products': 'Products Page',
    '/profile': 'Profile Page',
  };
  // path = '/products';
  switch (path) {
    case '/':
      print(pages["/"]);
      break;
    case '/products':
      print(pages["/products"]);
      break;
    case '/profile':
      print(pages["/profile"]);
      break;
    default:
      print('404 error');
  }
}

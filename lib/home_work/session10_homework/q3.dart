/*
Q3
Create a class Grade with a private field _score.
- The setter should only accept values 0–100, otherwise print 'Invalid score'.
- Add a getter and a computed getter isPass that returns true if score ≥ 50.
- In main(), demonstrate updating the score multiple times and printing results
*/
void main() {
  Grade g = Grade(70);
  print('Initial score: ${g.score}, Pass: ${g.isPass}');

  g.score = 85; // valid
  print('Updated score: ${g.score}, Pass: ${g.isPass}');

  g.score = 40; // valid but fail
  print('Updated score: ${g.score}, Pass: ${g.isPass}');

  g.score = 150; // invalid
  print('Final score: ${g.score}, Pass: ${g.isPass}');
}

class Grade {
  int _score = 0;

  Grade(this._score);

  // Setter
  set score(int value) {
    if (value >= 0 && value <= 100) {
      _score = value;
    } else {
      print('Invalid score');
    }
  }

  // Getter
  int get score => _score;

  // Computed Getter
  bool get isPass => _score >= 50;
}

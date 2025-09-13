/*
Q7. Object Interaction - Create a class Account with attributes owner and balance. - Add methods
deposit(amount) and withdraw(amount). - In main(), create an account, deposit 500, withdraw 200,
and print the final balance.
*/
void main() {
  Account account1 = Account('ahmed', 2000);
  account1.deposit(900);
  account1.withdraw(250);
  print('${account1.owner}-has final balance ${account1.balance}');
}

class Account {
  String owner;
  int balance;
  Account(this.owner, this.balance);
  void deposit(int amount) {
    balance += amount;
  }

  void withdraw(int amount) {
    balance -= amount;
  }
}

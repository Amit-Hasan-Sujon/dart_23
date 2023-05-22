// Define an abstract class Account
// with accountNumber (integer), balance (double)
abstract class Account {
  late int accountNumber;
  late double balance;

  // deposit(double amount): Adds the specified amount to the account balance.
  deposit(double amount) {
    balance = this.balance + amount;
    return balance;
  }

  // Abstract method that deducts the specified amount from the account balance.
  withdraw(double amount);
}

// Define a class SavingsAccount that extends the Account class.
class SavingsAccount extends Account {

  late double interestRate;

  SavingsAccount(accountNumber, balance, this.interestRate) {
    super.accountNumber = accountNumber;
    super.balance = balance;
  }

  @override
  withdraw(double amount) {
    double final_balance = super.balance - amount;
    final_balance = final_balance + (final_balance * (this.interestRate / 100));
    return final_balance;
  }
}


class CurrentAccount extends Account {

  // additional property called overdraftLimit (double).
  late double overdraftLimit;

  CurrentAccount(accountNumber, balance, this.overdraftLimit) {
    super.accountNumber = accountNumber;
    super.balance = balance;
  }

  @override
  withdraw(double amount) {
    // If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
    // Allow withdrawals up to the overdraft limit.
    if (amount > overdraftLimit) {
      print("Insufficient funds, Overdraft limit is ${overdraftLimit}");
    } else {
      double final_balance = super.balance - amount;
      return final_balance;
    }
  }
}


void main() {
  // Create an instance of the SavingsAccount class by providing values for the account
  // number, initial balance, and interest rate.
  SavingsAccount savingsAccountObj = SavingsAccount(66778899, 15000.00, 15.00);
  print("Account info is follows:");
  print("Saving Account No: ${savingsAccountObj.accountNumber}");
  print("Balance: ${savingsAccountObj.balance}");

  // Use the instance to perform operations like depositing and withdrawing money.
  print("After depositing balance amount: ${savingsAccountObj.deposit(6000.00)}");
  print("After withdrawing balance amount: ${savingsAccountObj.withdraw(1000.00)}");

  print("  ");

  // Create an instance of the CurrentAccount class by providing values for the account
  // number, initial balance, and overdraft limit.
  CurrentAccount currentAccountObj = CurrentAccount(11223344, 50000.00, 10000.00);
  print("Current Account info is follows::");
  print("Current Account No: ${currentAccountObj.accountNumber}");
  print("Balance: ${currentAccountObj.balance}");

  // Use the instance to perform operations like depositing and withdrawing.
  print("After depositing balance amount: ${currentAccountObj.deposit(5000.00)}");
  print("After withdrawing balance amount: ${currentAccountObj.withdraw(10000.00)}");

}
import 'dart:io';
import 'transaction.dart';

void main() {
  print("Welcome to the Wallet App");
  print("Please enter your wallet's currency:");

  String? currency = stdin.readLineSync();

  Wallet wallet = Wallet(currency ?? "AUD");

  while (true) {
    print("\nChoose an option:");
    print("1. Add Income");
    print("2. Make an Expense");
    print("3. View Balance");
    print("4. List all Expense");
    print("5. List all Incomes");
    print("6. Exit\n");

    String? selection = stdin.readLineSync();

    switch (selection) {
      case '1':
        print("Enter Income amount:");
        String? incomeAmountStr = stdin.readLineSync();
        double? _income = double.parse(incomeAmountStr!);
        String? source = stdin.readLineSync();

        Income income = Income(_income, source ?? 'Salary');
        wallet.addIncome(income);
        break;
      case '2':
        print("Enter Expense amount:");
        String? incomeAmountStr = stdin.readLineSync();
        double? expence = double.parse(incomeAmountStr!);
        String? source = stdin.readLineSync();

        Expense expns = Expense(expence, source ?? 'Rent');
        wallet.makeAnExpence(expns);
        break;
      case '3':
        print("Viewing Balance ${wallet.getBalance()}");
        break;
      case '4':
        print("Viewing all expenses!\n${wallet.listAllExpenses()} \n");
        break;
      case '5':
        print("Viewing all incomes!\n${wallet.listAllIncomes()} \n");
        break;
      case '6':
        print("Exiting the Wallet App. Goodbye!");
        return;

      default:
        print("Invalid option. Please try again.");
    }
  }
}

# Expense Tracker CLI App

## Description
This is a Command-Line Interface (CLI) application that allows you to track your expenses. You can create a wallet with a desired currency, add incomes, make withdrawals, and print out your expenses and incomes. The app is designed to help you manage your personal finances efficiently from the terminal.

## Features
- **Create a Wallet:** Initialize a wallet with your desired currency.
- **Add Incomes:** Record incomes from various sources and increase your wallet balance.
- **Make Expenses:** Deduct expenses from your wallet and track spending categories.
- **View Balance:** Check the current balance in your wallet.
- **List Expenses and Incomes:** Display all recorded transactions, categorized by income and expense.

## Additional Changes
- **Setup Testing Dependencies:** Configured the project to include necessary testing libraries.
- **Wrote `pubspec.yaml`:** Added `pubspec.yaml` to manage dependencies, including the `test` library under `dev_dependencies`.

## Project Structure
```bash
lib/
  ├── main.dart         # Entry point for the application
  └── transaction.dart  # Contains the core logic for transactions, wallet, income, and expense

test/
  └── transaction_test.dart  # Unit tests for the application

import 'package:test/test.dart';
import '../lib/transaction.dart';

void main() {
  test('Income value should be positive', () {
    final income = Income(100, 'Salary');
    expect(income.monies, greaterThan(0));
  });

  test('Expense value should be positive', () {
    final expense = Expense(50, 'Rent');
    expect(expense.monies, greaterThan(0));
  });

  test('Adding income should increase wallet balance', () {
    final wallet = Wallet('AUD');
    final income = Income(100, 'Salary');
    wallet.addIncome(income);
    expect(wallet.getBalance(), equals(100));
  });

  test('Making an expense should decrease wallet balance', () {
    final wallet = Wallet('AUD');
    final income = Income(2000, 'Salary');
    wallet.addIncome(income);
    final expense = Expense(500, 'Rent');
    wallet.makeAnExpence(expense);
    expect(wallet.getBalance(), equals(1500));
  });

  test('Should not allow an expense greater than balance', () {
    final wallet = Wallet('AUD');
    final expense = Expense(500, 'Rent');
    expect(() => wallet.makeAnExpence(expense), returnsNormally);
    expect(wallet.getBalance(), equals(0)); // Balance remains unchanged
  });
}

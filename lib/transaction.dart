abstract class Transaction {
  double convertCurrency(double localCurrency, double conversionRate);
}

class Wallet {
  double _balance = 0.0;
  String currency;
  List<Expense> expences = [];
  List<Income> incomes = [];

  Wallet(this.currency);

  double getBalance() {
    return _balance;
  }

  String listAllExpenses() {
    String sources = '';
    for (Expense exp in this.expences) {
      sources += 'Expense from ${exp.source} was ${exp.monies}.\n';
    }
    return sources;
  }

  String listAllIncomes() {
    String sources = '';
    for (Income inc in this.incomes) {
      sources += 'Income from ${inc.source} was ${inc.monies}.\n';
    }
    return sources;
  }

  // Money comes in add to income and add to balance
  double addIncome(Income money) {
    this.incomes.add(money);
    this._balance += money.monies;
    return this._balance;
  }

  // Money goes out, add to expences and deduct from balance to balance
  double makeAnExpence(Expense money) {
    try {
      if (this._balance >= money.monies) {
        this._balance -= money.monies;
        this.expences.add(money);
      } else {
        print("You don't have enough funds to make this expense");
      }
    } catch (e) {
      throw Exception(
          "Error occured while trying to withdraw the money from the account");
    }
    return this._balance;
  }
}

class Expense extends Transaction {
  double monies;
  String currency;
  String source;

  Expense(this.monies, this.source, {this.currency = "AUD"});

  @override
  double convertCurrency(double localCurrency, double conversionRate) {
    return localCurrency * conversionRate;
  }
}

class Income extends Transaction {
  double monies;
  String currency;
  String source;

  Income(this.monies, this.source, {this.currency = "AUD"});

  @override
  double convertCurrency(double localCurrency, double conversionRate) {
    return localCurrency * conversionRate;
  }
}

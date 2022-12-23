class InvestmentTransaction {
  final int count;
  final double price;
  final double fees;
  final DateTime transactionTime;
  final TransactionType transactionType;

  InvestmentTransaction(
      {required this.count,
      required this.price,
      required this.fees,
      required this.transactionTime,
      required this.transactionType});
}

class Investment {
  final String symbol;
  final String name;
  final List<InvestmentTransaction> investmentTransactions;

  Investment({
    required this.symbol,
    required this.name,
    required this.investmentTransactions,
  });
}

enum TransactionType { Purchase, Sale }

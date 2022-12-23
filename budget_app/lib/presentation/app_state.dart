import 'package:budget_app/data/transaction.dart';

AppState state = AppState();

class AppState {
  String savingGoal = "";
  double amountNeeded = 0;
  double savingsEstimateTotal = 0;
  double savingsMonthlyEstimate = 0;
  List<Transaction> transactions = [];
}

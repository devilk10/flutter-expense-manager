import 'package:expensetracker/plus_button.dart';
import 'package:expensetracker/top_card.dart';
import 'package:expensetracker/transactions_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: const [
            TopCard(balance: "500", income: "200", expense: "300"),
            TransactionsList(
              description: "Sold weed",
              amount: "1000",
              incomeOrExpense: Transaction.Income,
            ),
            TransactionsList(
              description: "Smoked weed",
              amount: "700",
              incomeOrExpense: Transaction.Expense,
            ),
          ],
        ),
      ),
      floatingActionButton: PlusButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

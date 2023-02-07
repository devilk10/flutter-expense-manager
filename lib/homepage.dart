import 'package:expensetracker/top_card.dart';
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
      body: Column(
        children: [
          const TopCard(balance: "500", income: "200", expense: "300"),
          Expanded(
            child: Container(
              color: Colors.blue[100],
              child: const Center(
                child: Text('Transactions'),
              ),
            ),
          ),
          Container(
            height: 25,
            child: const Center(
              child: Text('Button'),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class TransactionsList extends StatelessWidget {
  final String description;
  final Transaction incomeOrExpense;
  final String amount;

  const TransactionsList(
      {super.key,
      required this.description,
      required this.incomeOrExpense,
      required this.amount});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(bottom: 12),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Container(
              color: Colors.grey[100],
              height: 50,
              padding: const EdgeInsets.all(10),
              child: Center(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[500]),
                              child: const Center(
                                child: Icon(
                                  Icons.attach_money_outlined,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(description,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[700],
                                )),
                          ]),
                      Text(
                        "${Transaction.Expense == incomeOrExpense ? "-" : "+"} \$$amount",
                        style: TextStyle(
                            fontSize: 16,
                            color: Transaction.Expense == incomeOrExpense
                                ? Colors.red
                                : Colors.green),
                      )
                    ]),
              ),
            )));
  }
}

enum Transaction { Income, Expense }

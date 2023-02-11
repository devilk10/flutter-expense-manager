import 'dart:async';

import 'package:expensetracker/loading_circle.dart';
import 'package:expensetracker/plus_button.dart';
import 'package:expensetracker/top_card.dart';
import 'package:expensetracker/transactions_list.dart';
import 'package:flutter/material.dart';

import 'google_sheets_api.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool timerHasStarted = false;

  void startLoading() {
    timerHasStarted = true;
    GoogleSheetsApi().init();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      if (GoogleSheetsApi.loading == false) {
        setState(() {});
        timer.cancel();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (GoogleSheetsApi.loading == true && timerHasStarted == false) {
      startLoading();
    }
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            const TopCard(balance: "500", income: "200", expense: "300"),
            Expanded(
                child: Container(
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    GoogleSheetsApi.loading
                        ? const LoadingCircle()
                        : Expanded(
                            child: ListView.builder(
                            itemCount:
                                GoogleSheetsApi.currentTransactions.length,
                            itemBuilder: (context, index) {
                              return TransactionsList(
                                  description: GoogleSheetsApi
                                      .currentTransactions[index][0],
                                  amount: GoogleSheetsApi
                                      .currentTransactions[index][1],
                                  incomeOrExpense: GoogleSheetsApi
                                      .currentTransactions[index][2]);
                            },
                          ))
                  ],
                ),
              ),
            )),
            PlusButton()
          ],
        ),
      ),
    );
  }
}

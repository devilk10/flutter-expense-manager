import 'package:flutter/material.dart';

class TopCard extends StatelessWidget {
  final String balance;
  final String income;
  final String expense;

  const TopCard(
      {required this.balance, required this.income, required this.expense});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.grey[200],
              boxShadow: [
                BoxShadow(
                    color: Colors.grey.shade500,
                    offset: const Offset(4, 4),
                    blurRadius: 15.0,
                    spreadRadius: 2.0),
                const BoxShadow(
                    color: Colors.white,
                    offset: Offset(-4.0, -4.0),
                    blurRadius: 15.0,
                    spreadRadius: 1.0),
              ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('B A L A N C E',
                        style:
                            TextStyle(color: Colors.grey[500], fontSize: 16)),
                    Text(
                      '\$$balance',
                      style: TextStyle(color: Colors.grey[800], fontSize: 40),
                    ),
                  ]),
              Padding(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(Icons.arrow_upward,
                              color: Colors.green[400]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Income",
                                style: TextStyle(color: Colors.grey[500])),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('\$$income',
                                style: TextStyle(
                                    color: Colors.grey[600],
                                    fontWeight: FontWeight.bold))
                          ])
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                            shape: BoxShape.circle, color: Colors.white),
                        child: Center(
                          child: Icon(Icons.arrow_downward,
                              color: Colors.red[400]),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Expense",
                              style: TextStyle(color: Colors.grey[500])),
                          const SizedBox(
                            height: 5,
                          ),
                          Text('\$$expense',
                              style: TextStyle(
                                  color: Colors.grey[600],
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ])
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

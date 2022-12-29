import 'package:flutter/material.dart';
import './transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: "t1",
      title: "New Shose",
      amount: 69.22,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t1",
      title: "New Shirt",
      amount: 22.22,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t1",
      title: "New Pent",
      amount: 22.22,
      date: DateTime.now(),
    ),
    Transaction(
      id: "t1",
      title: "New Coat",
      amount: 22.22,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Expenses App",
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text(
                "CHART!",
              ),
              elevation: 5,
            ),
          ),
          Column(
            children: transaction.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        tx.amount.toString(),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          tx.title,
                        ),
                        Text(
                          tx.date.toString(),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

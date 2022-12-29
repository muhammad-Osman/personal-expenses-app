import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Personal Expenses App",
        ),
      ),
      body: Column(
        children: <Widget>[
          Card(
            child: Text("CHART!"),
          ),
          Card(
            child: Text("LIST OF TX!"),
          ),
        ],
      ),
    );
  }
}

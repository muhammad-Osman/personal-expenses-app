import 'package:flutter/material.dart';
import 'package:personal_expensis_app/models/transaction.dart';

class NewTransaction extends StatelessWidget {
  late final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: ElevatedButton(
                child: Text('Add Transaction'),
                style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20)),
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

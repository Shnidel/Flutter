import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleController,
              /* onChanged: (value) {
                      this.titleInput = value;
                    }, */
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              /* onChanged: (value) {
                      this.amountInput = value;
                    }, */
            ),
            FlatButton(
              onPressed: () {
                this.addTransaction(
                    titleController.text, double.parse(amountController.text));
              },
              textColor: Colors.purple,
              child: Text('Add Transation'),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

import '../../models/transaction.dart';
import './new_transaction.dart';
import './transaction_list.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _userTransaction = [
    new Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    new Transaction(
        id: 't2',
        title: 'Weeckly Groceries',
        amount: 16.53,
        date: DateTime.now())
  ];

  void _addNewTransaction(String title, double amount) {
    final newTx = new Transaction(
      id: Uuid().v4(),
      title: title,
      amount: amount,
      date: DateTime.now(),
    );

    setState(() {
      this._userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        NewTransaction(_addNewTransaction),
        TransactionList(
          transactionList: _userTransaction,
        ),
      ],
    );
  }
}

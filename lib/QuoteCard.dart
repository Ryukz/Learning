// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable, prefer_const_constructors_in_immutables, use_key_in_widget_constructors
import 'package:flutter/material.dart';

import 'package:flutter_application/quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function() delete;
  QuoteCard({required this.quote, required this.delete});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
            ),
            ElevatedButton.icon(
              onPressed: delete,
              label: Text('Delete'),
              icon: Icon(Icons.delete),
              style: ElevatedButton.styleFrom(primary: Colors.grey[800]),
            )
          ],
        ),
      ),
    );
  }
}

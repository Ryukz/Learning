// ignore_for_file: file_names, prefer_const_constructors, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_application/quote.dart';

class QuoteCard extends StatefulWidget {
  Quote quote;
  QuoteCard(this.quote, {Key? key}) : super(key: key);

  @override
  State<QuoteCard> createState() => _QuoteCardState();
}

class _QuoteCardState extends State<QuoteCard> {
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
              widget.quote.text,
              style: TextStyle(fontSize: 20.0, color: Colors.grey[700]),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              widget.quote.author,
              style: TextStyle(fontSize: 16.0, color: Colors.grey[700]),
            ),
          ],
        ),
      ),
    );
  }
}

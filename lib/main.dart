// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types, must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_application/quote.dart';

import 'QuoteCard.dart';

int clicker = 0;
void main() => runApp(MaterialApp(
      home: QuotesList(),
    ));

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(text: 'Editable Text', author: 'Author1'),
    Quote(text: 'This is Text2', author: 'Author2'),
    Quote(text: 'This is Text2', author: 'Author3')
  ];

  @override
  Widget build(BuildContext context) {
    // ignore: dead_code
    return Scaffold(
        backgroundColor: Colors.grey[300],
        appBar: AppBar(
          title: Text('Awesome Quotess'),
          centerTitle: true,
          backgroundColor: Colors.blueAccent[200],
        ),
        body: Column(
          children: quotes.map((e) => QuoteCard(e)).toList(),
        ));
  }
}

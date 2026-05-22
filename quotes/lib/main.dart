import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
        author: 'Oscar Wilde',
        text: 'Be yourself; everyone else is already taken',
        category: 'Inspirational',
        createdAt: DateTime(1887, 04, 07)),
    Quote(
        author: 'Oscar Wilde',
        text: 'I have nothing to declare except my genius',
        category: 'General',
        createdAt: DateTime(1892, 09, 22)),
    Quote(
        author: 'Oscar Wilde',
        text: 'The truth is rarely pure and never simple',
        category: 'Wisdom',
        createdAt: DateTime(1890, 02, 15))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}

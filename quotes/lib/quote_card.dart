import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  QuoteCard({required this.quote});

  Color? categoryColor(String c) {
    Color? _c = Colors.grey[400];
    switch (c.toLowerCase()) {
      case 'inspirational':
        _c = Colors.red[400];
        break;
      case 'general':
        _c = Colors.green[400];
        break;
      case 'wisdom':
        _c = Colors.blue[400];
        break;
      default:
        _c = Colors.grey[400];
        break;
    }
    return _c;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        color: categoryColor(quote.category),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 6.0),
              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),
              Text(
                quote.category,
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey[800],
                ),
              ),
              Text(
                DateFormat('MMM d, yyyy').format(quote.createdAt),
                style: TextStyle(
                  fontSize: 10.0,
                  color: Colors.grey[800],
                ),
              ),
            ],
          ),
        ));
  }
}

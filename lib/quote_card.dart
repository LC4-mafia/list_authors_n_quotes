import 'package:flutter/material.dart';
import 'package:list_authors_n_quotes/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quotes;

  QuoteCard({this.quotes});
  // const QuoteCard({
  //   Key key,
  // }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
       margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
       child: Padding(
         padding: const EdgeInsets.all(12.0),
         child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,

            children: <Widget>[
              Text(
                quotes.text,
                style:  TextStyle(
                  fontSize: 26.0,
                  color: Colors.grey[800]
                )
              ),
              SizedBox(height: 8.0),
              Text(
                quotes.author,
                style:  TextStyle(
                  fontSize: 18.0,
                  color: Colors.amberAccent,
                )
              )
            ]
          ),
       ),
      );
  }
}
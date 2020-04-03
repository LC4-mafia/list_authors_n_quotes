import 'package:flutter/material.dart';
import 'package:list_authors_n_quotes/quote.dart';
import 'package:list_authors_n_quotes/quote_card.dart';


void main() => runApp(
  MaterialApp(

    home: QuoteList(),
  )
);

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  int _someCounter = 0;

  List<Quote> user = [

    Quote(author: 'Don Fad', text: 'One Day One Day'),
    Quote(author: 'Jarrel', text: 'Improve 1 Million'),
    Quote(text: 'While There is Life, There is Hope', author: 'Hawkin')
  ];

List<Quote> realQuotes = [

  Quote(author: 'Tao', text: 'God is Available'),
  Quote(text: "Genius is one percent inspiration and ninety-nine percent perspiration.",
    author: "Thomas Edison"),
  Quote(text: "You can observe a lot just by watching.", author: "Yogi Berra"),
  Quote(text: "A house divided against itself cannot stand.", author: "Abraham Lincoln"),
  Quote(text: "Difficulties increase the nearer we get to the goal.", author: "Johann Wolfgang von Goethe"),
  Quote(text: "Fate is in your hands and no one elses", author: "Byron Pulsifer"),
  Quote(text: "Be the chief but never the lord.", author: "Lao Tzu"),


];

  // Widget quoteTemplate(quotes){

  //   return  QuoteCard(quotes);
  // }
  // List<Quote> user = [

  //   Quote('some quote', 'mafia'),
  //   Quote('another quote', 'godfred'),
  //   Quote('some last quote', 'jesse'),
  // ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      floatingActionButton: FloatingActionButton(

        onPressed: () {

          setState(() {
            _someCounter++;
            
            //print(user.length);
            //print(realQuotes.isNotEmpty);

            if( _someCounter == 1){
              user.add(Quote(author: 'Me', text: 'We here'));
              user.add(Quote(author: 'Godfred', text: 'We will see USA'));
              
            }

            if(user.length > 0){

            //_someCounter = 0;
            while(realQuotes.isNotEmpty){
                user.removeRange(0, 1);
                user.add(realQuotes[_someCounter]);

            }
              
            }
            
            
            

            //havent been able to implement screen adjusting yet 

            // if(_someCounter == 6){
            //   user.add(Quote(author: 'Godfred Asuman', text: 'You told me!'));
            // }

          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber[700],
        title: Text(
          'Mafia Quotes',
          style: TextStyle(

            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
          ),
        centerTitle: true,
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //children: user.map((quotes) => Text('${quotes.text} - ${quotes.author}')).toList(),
        //children: user.map((quote) => Text('${quote.text} - ${quote.author}')).toList(),
        //children: user.map((quotes) => quoteTemplate(quotes)).toList(),
        children: user.map((quotes) => QuoteCard(quotes: quotes)).toList(),
        ),
    );
  }
}




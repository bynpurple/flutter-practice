import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SLW, SFW'),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}

class HelloSLW extends StatelessWidget {
  int _score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stateless Widget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_score'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      _score++;
                      print('$_score clicked');
                    }),
                FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      _score--;
                      print('$_score clicked');
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class HelloPage extends StatefulWidget {
  // stateful 내 변수는 상태가 변경되면 안됨
  // 변수 생성 시 초기화 해야함
  final String title;

  HelloPage(this.title);

  @override
  _HelloPageState createState() => _HelloPageState();
}

class _HelloPageState extends State<HelloPage> {
  // _ 붙이면 private
  // String _message = "message";
  int _score = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("$_score"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FloatingActionButton(
                    child: Icon(Icons.remove),
                    onPressed: () {
                      setState(() {
                        _score--;
                        print('$_score clicked');
                      });
                    }),
                FloatingActionButton(
                    child: Icon(Icons.add),
                    onPressed: () {
                      setState(() {
                        _score++;
                        print('$_score clicked');
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Start Name Generator',
//       home: RandomWords(),
//       theme: ThemeData(primaryColor: Colors.white),
//     );
//   }
// }

// class RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 20);
//   final _saved = <WordPair>[];
//   // @override
//   // Widget build(BuildContext context) {
//   //   final wordPair = WordPair.random();
//   //   return Text(wordPair.asPascalCase);
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("리스트뷰 랜덤 10개 생성"),
//         actions: [IconButton(icon: Icon(Icons.list), onPressed: _pushSaved)],
//       ),
//       body: _buildSuggestions(),
//     );
//   }

//   void _pushSaved() {
//     Navigator.of(context).push(MaterialPageRoute(
//       builder: (BuildContext context) {
//         final tiles = _saved.map((WordPair pair) {
//           return ListTile(
//             title: Text(
//               pair.asPascalCase,
//               style: _biggerFont,
//             ),
//           );
//         });

//         final divided = ListTile.divideTiles(
//           context: context,
//           tiles: tiles,
//         ).toList();

//         return Scaffold(
//           appBar: AppBar(
//             title: Text('Saved Sugggestions..'),
//           ),
//           body: ListView(
//             children: divided,
//           ),
//         );
//       },
//     ));
//   }

//   Widget _buildSuggestions() {
//     return ListView.builder(
//         padding: const EdgeInsets.all(16.0),
//         itemBuilder: (context, i) {
//           if (i.isOdd) return Divider();
//           final index = i ~/ 2;
//           if (index >= _suggestions.length) {
//             _suggestions.addAll(generateWordPairs().take(10));
//           }
//           return _buildRow(_suggestions[index]);
//         });
//   }

//   Widget _buildRow(WordPair pair) {
//     final alreadySaved = _saved.contains(pair);
//     return ListTile(
//       title: Text(
//         pair.asPascalCase,
//         style: _biggerFont,
//       ),
//       trailing: Icon(
//         alreadySaved ? Icons.favorite : Icons.favorite_border,
//         color: alreadySaved ? Colors.red : Colors.purple,
//       ),
//       onTap: () {
//         setState(() {
//           if (alreadySaved) {
//             _saved.remove(pair);
//           } else {
//             _saved.add(pair);
//           }
//         });
//       },
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => RandomWordsState();
// }

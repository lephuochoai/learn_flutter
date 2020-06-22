import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Screen',
      home: RandomWords(),
      theme: ThemeData(primaryColor: Colors.deepPurple[900]),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordState createState() => new RandomWordState();
}

class RandomWordState extends State<RandomWords> {
  final List<WordPair> _words = <WordPair>[];
  final Set<WordPair> _saved = new Set<WordPair>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        actions: <Widget>[
          new IconButton(icon: const Icon(Icons.list), onPressed: _pushSaved)
        ],
      ),
      body: Center(child: ListView.builder(itemBuilder: (context, index) {
        if (index >= _words.length) {
          _words.addAll(generateWordPairs().take(10));
        }
        return _buildRow(_words[index]);
      })),
    );
  }

  Widget _buildRow(WordPair wordPair) {
    final bool alreadySaved = _saved.contains(wordPair);

    return ListTile(
        title: Text(
          wordPair.asPascalCase,
          style: const TextStyle(fontSize: 18.0),
        ),
        trailing: new Icon(
          alreadySaved ? Icons.favorite : Icons.favorite_border,
          color: alreadySaved ? Colors.red : null,
        ),
        onTap: () {
          setState(() {
            alreadySaved ? _saved.remove(wordPair) : _saved.add(wordPair);
          });
        });
  }

  void _pushSaved() {
    Navigator.of(context)
        .push(new MaterialPageRoute<void>(builder: (BuildContext context) {
      final titles = _saved.map((WordPair pair) {
        return new ListTile(
          title: new Text(
            pair.asPascalCase,
            // style: ,
          ),
        );
      });

      print(titles);

      final List<Widget> divided =
          ListTile.divideTiles(tiles: titles, context: context).toList();

      return new Scaffold(
        appBar: new AppBar(
          title: const Text('Saved List'),
        ),
        body: new ListView(
          children: divided,
        ),
      );
    }));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/learn.dart';
import 'pages/review.dart';

import './messages/generated.dart';

void main() async {
  await initializeRust();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Word App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/learn': (context) => LearnPage(),
        '/review': (context) => ReviewPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Word App'),
      ),
      body: Center(
        child: Text(
          'Welcome to the Word App',
          style: TextStyle(fontSize: 24),
        ),
      ),
      bottomNavigationBar: DownBar(),
    );
  }
}

class DownBar extends StatelessWidget {
  const DownBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/learn');
            },
            child: Text('Learn Words'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/review');
            },
            child: Text('Review Words'),
          ),
        ],
      ),
    );
  }
}

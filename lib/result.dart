import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Result extends StatefulWidget {
  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz Answers')),
  //        automaticallyImplyLeading: false,
),
        body:WebView(
          initialUrl: 'https://flutter.dev',
        )
    );
  }
}

import 'package:educationapp/docoument.dart';
import 'package:educationapp/text_quiz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'help.dart';

class SubjectVideo extends StatefulWidget {


  final String text;
  SubjectVideo({Key key, @required this.text}) : super(key: key);


  @override
  _SubjectVideoState createState() => _SubjectVideoState();
}

class _SubjectVideoState extends State<SubjectVideo> {
  YoutubePlayerController _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId("https://www.youtube.com/watch?v=bTi_pkLbKRw"), // id youtube video
      flags: YoutubePlayerFlags(
        autoPlay: false,
        mute: false,

      ));

  InAppWebViewController webcon;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(        title:  Container(
          margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5)-10),child: Text('${widget.text}')),
      ),
      body:WillPopScope(
        onWillPop: (){
          webcon.evaluateJavascript(source: "document.getElementsByClassName('video-stream html5-main-video')[0].pause()");
          Navigator.pop(context);

        },
      child:
      SingleChildScrollView(
        child: (
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child : Container(
                height:300.0,
                child : /*YoutubePlayer(
                  controller: _controller,
                  showVideoProgressIndicator: true,
                  progressIndicatorColor: Colors.blueAccent,

                ),*/InAppWebView(

                  onExitFullscreen: (web){
                    web.getContentHeight().then((value) => print("total height : ${value}"));
                    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

                  },
                  onEnterFullscreen: (web){
                    web.getContentHeight().then((value) => print("total height : ${value}"));
                    SystemChrome.setPreferredOrientations([DeviceOrientation.landscapeLeft,DeviceOrientation.landscapeRight]);
                  },
                  initialUrl: "http://www.youtube.com/embed/tf42K4pPWkM",
                  onWebViewCreated: (web){
                    webcon = web;
                  },


                  /*onPageFinished: (s){
                    webcon.evaluateJavascript("document.getElementsByClassName('ytp-large-play-button ytp-button')[0].click();");
                  },*/
                )
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left:8.0,top:5.0),
                  child: Text('${widget.text}',textAlign: TextAlign.left,style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold)),
                ),
              ],
            ),

             ListTile(
                  leading:FlutterLogo(),
                  onTap: (){

                    webcon.evaluateJavascript(source: "document.getElementsByClassName('video-stream html5-main-video')[0].pause()");
/**/                Navigator.push(context,MaterialPageRoute(builder: (context) => Docoument()),);
                  },
                  title: Text('Document',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading:FlutterLogo(),
                  onTap: (){
                    webcon.evaluateJavascript(source: "document.getElementsByClassName('video-stream html5-main-video')[0].pause()");

/**/                Navigator.push(context,MaterialPageRoute(builder: (context) => TextQuiz(text: widget.text,)),);
                  },
                  title: Text('Quiz',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading:FlutterLogo(),
                  onTap: (){
                    webcon.evaluateJavascript(source: "document.getElementsByClassName('video-stream html5-main-video')[0].pause()");

/**/                Navigator.push(context,MaterialPageRoute(builder: (context) => Help(text: widget.text,url: "",)),);
                  },
                  title: Text('Help',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
             /*   ListTile(
                  leading:FlutterLogo(),
                  onTap: (){
                    _controller.pause();

*//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => Help()),);

                  },
                  title: Text('Help 2',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                ListTile(
                  leading:FlutterLogo(),
                  onTap: (){
                    _controller.pause();
*//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => Help()),);
                  },
                  title: Text('Help 3',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),
                ),
*/




          /*  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  FlatButton(onPressed: () {
                      _controller.pause();

 *//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => Docoument()),);
                  },
                  child: Text('Document',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  FlatButton(onPressed: () {
                    _controller.pause();
 *//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => TextQuiz()),);
                  },
                    child: Text('Quiz    ',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),textAlign: TextAlign.start,),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  FlatButton(onPressed: () {
                    _controller.pause();
 *//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => Help()),);

                  },
                    child: Text('Help 1',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  *//*Padding(
                    padding: EdgeInsets.only(left: 15),
                  ),*//*
                  Icon(
                    Icons.star_border,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  FlatButton(onPressed: () {
                    _controller.pause();
 *//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => Help()),);

                  },
                    child: Text('Help 2',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    Icons.star_border,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  FlatButton(onPressed: () {
                    _controller.pause();
 *//**//*                   Navigator.push(context,MaterialPageRoute(builder: (context) => Help()),);

                  },
                    child: Text('Help 3',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.bold),),)
                ],
              ),
            ),
          */],
        )
        ),
      )
      )

    );
  }
}

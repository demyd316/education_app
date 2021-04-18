import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Help extends StatefulWidget {

  String url;
  String text;



  Help({Key key,this.url,this.text});

  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  YoutubePlayerController _controller;

  InAppWebViewController webcon;

  @override
  Widget build(BuildContext context) {

    String ii = "";

    if(widget.url!=null) {
      if (widget.url.indexOf("&") != -1) {
        ii = widget.url.substring(
            widget.url.indexOf("=") + 1, widget.url.indexOf("&"));
      } else {
        ii = widget.url.substring(widget.url.indexOf("=") + 1);
      }
    }else
      ii='SP0Ejd7hmIU';

    print(ii);

    _controller = YoutubePlayerController(

        initialVideoId: ii,
        // id youtube video
        flags: YoutubePlayerFlags(
          autoPlay: true,
          mute: false,

        ));

    return Scaffold(
      appBar: AppBar(        title:  Container(
          margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5)-10 ),child: Text('${widget.text}')),
      ),
      body: WillPopScope(
        onWillPop: (){
          webcon.evaluateJavascript(source: "document.getElementsByClassName('video-stream html5-main-video')[0].pause()");
          Navigator.pop(context);
        },
        child: SingleChildScrollView(child:Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(top:8.0),
            child: Container(
              height: MediaQuery.of(context).size.height/3,
              child: InAppWebView(

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
            leading: FlutterLogo(),
            title: Text("Return To Quiz",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue),),

            //color: Colors.blue,
            onTap: () {
              webcon.evaluateJavascript(source: "document.getElementsByClassName('video-stream html5-main-video')[0].pause()");

              Navigator.pop(context);
            },

          ),
        ],
      ),
      ),
      ),
    );
  }
}

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:local_assets_server/local_assets_server.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'help.dart';
import 'quiz_options.dart';

class TextQuiz extends StatefulWidget {

  final String text;
  TextQuiz({Key key, @required this.text}) : super(key: key);

  @override
  _TextQuizState createState() => _TextQuizState();
}

class _TextQuizState extends State<TextQuiz> {

  WebViewController webViewController;
  String htmlFilePath = 'quizs/index.html';

  loadLocalHTML() async{

    String fileHtmlContents = await rootBundle.loadString(htmlFilePath);
    webViewController.loadUrl(Uri.dataFromString(fileHtmlContents,
        mimeType: 'text/html', encoding: Encoding.getByName('utf-8'))
        .toString());
  }

  bool isListening = false;
  String address;
  int port;

  @override
  initState() {
    _initServer();

    super.initState();
  }

  _initServer() async {
    final server = new LocalAssetsServer(
      address: InternetAddress.loopbackIPv4,
      assetsBasePath: 'quizs',
    );

    final address = await server.serve();

    setState(() {
      this.address = address.address;
      port = server.boundPort;
      isListening = true;
    });
  }

  bool _hidebtns = false;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Container(
            margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5) ),child: Text('${widget.text}')),
        //automaticallyImplyLeading: false,

      ),
      body:SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [


        Container(
          margin: EdgeInsets.only(top: 25),
          height: MediaQuery.of(context).size.height,
          child: WebView(

            initialUrl: 'http://localhost:$port',
            javascriptMode: JavascriptMode.unrestricted,
            javascriptChannels: Set.from([
              JavascriptChannel(
                  name: 'Print',
                  onMessageReceived: (JavascriptMessage message) {
                    print("rest : ");
                    print(message.message);
                    if(message.message == "hide"){

                      setState(() {
                        _hidebtns = true;
                      });


                    }else {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) =>
                              Help(url: message.message, text: widget.text,)),);
                    }

                  })
            ]),
            onWebViewCreated: (WebViewController tmp) {
              webViewController = tmp;
              webViewController.loadUrl("http://localhost:$port");

            },
         ),
        ),

        ],
      ),
      ),
      floatingActionButton:
          Visibility(
            visible: !_hidebtns,
          child:
          Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[

            Padding(
              padding: EdgeInsets.only(left: 5,right: 5),
              child:FloatingActionButton(
                heroTag: 'help',
                onPressed: () {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  webViewController.evaluateJavascript("Print.postMessage(document.getElementById('youtubehelp').value);");

                },
                child: Icon(Icons.lightbulb_outline),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5,right: 5),
              child: FloatingActionButton(
                heroTag: 'check',
                onPressed: () {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  webViewController.evaluateJavascript("document.activeElement.blur()");
                  webViewController.evaluateJavascript("checkans()");


                },
                child: Icon(Icons.check),

              ),
            ),

            Padding(
              padding: EdgeInsets.only(left: 5,right: 5),
              child:  FloatingActionButton(
                heroTag: 'prev',
                onPressed: () {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  webViewController.evaluateJavascript("prev()");


                },
                child: Icon(Icons.arrow_back),

              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5,right: 5),
              child:  FloatingActionButton(
                heroTag: 'next',
                onPressed: () {
                  SystemChannels.textInput.invokeMethod('TextInput.hide');
                  webViewController.evaluateJavascript("next()");
                },
                child: Icon(Icons.arrow_forward),

              ),

            ),



          /*Positioned(
            bottom: 10.0,
            left: 40.0,
            child: FloatingActionButton(
              heroTag: 'help',
              onPressed: () {
                webViewController.evaluateJavascript("Print.postMessage(document.getElementById('youtubehelp').value);");

              },
              child: Icon(Icons.lightbulb_outline),

            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 100.0,
            child: FloatingActionButton(
              heroTag: 'check',
              onPressed: () {

                webViewController.evaluateJavascript("checkans()");


              },
              child: Icon(Icons.check),

            ),
          ),
          Positioned(
            bottom: 10.0,
            left: 160.0,
            child: FloatingActionButton(
              heroTag: 'next',
              onPressed: () {
                webViewController.evaluateJavascript("prev()");


              },
              child: Icon(Icons.arrow_back),

            ),
          ),Positioned(
            bottom: 10.0,
            left: 220.0,
            child: FloatingActionButton(
              heroTag: 'back',
              onPressed: () {
                webViewController.evaluateJavascript("next()");
              },
              child: Icon(Icons.arrow_forward),

            ),
          ),*/
        ],
      ),
      ),

    );
  }

/*  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print('message.message: ${message.message}');
        }),
  ].toSet();*/

}

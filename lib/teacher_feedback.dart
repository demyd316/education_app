import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'help.dart';

class TeacherFeedBack extends StatefulWidget {
  @override
  _TeacherFeedBackState createState() => _TeacherFeedBackState();
}

class _TeacherFeedBackState extends State<TeacherFeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz')),
  //        automaticallyImplyLeading: false,
),
        body:SingleChildScrollView(child:Column(
          children: [
            Container(
              height: 300,
              child:WebView(
                initialUrl: 'https://flutter.dev',
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(

                  child: Text('Picture Path',style: TextStyle(fontSize: 20,color: Colors.black),)
                ),
               Container(child: FlutterLogo()),
                new Container(
                  width:120,
                  child:RaisedButton(

                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.blue)

                    ),
                    child: new Text(
                      'Submit',
                      style: new TextStyle(
                        color: Colors.white,fontSize: 20,

                      ),
                    ),
                    color: Colors.blue,
                    onPressed: () {

                    },

                  ),

                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(

                child: new TextFormField(
                  keyboardType: TextInputType.multiline,
                  maxLines: 6,
                  maxLength: 1000,
                  decoration: new InputDecoration(
                    border: new OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.teal)
                    ),
                    hintText: 'Teacher Feedback',
                ),

                ),
              ),
            ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Container(
                  width:300,
                  height: 50,
                  child:RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(0.0),
                        side: BorderSide(color: Colors.blue)

                    ),
                    child: new Text(
                      'Help',
                      style: new TextStyle(
                        color: Colors.white,fontSize: 20,

                      ),
                    ),
                    color: Colors.blue,
                    onPressed: () {
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Help()),);

                    },

                  ),

                ),
              ),
            ],
        ),)
    );
  }
}

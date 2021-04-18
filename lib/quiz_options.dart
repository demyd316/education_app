import 'package:educationapp/teacher_feedback.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import 'help.dart';

class QuizOptions extends StatefulWidget {
  @override
  _QuizOptionsState createState() => _QuizOptionsState();
}

class _QuizOptionsState extends State<QuizOptions> {
  int _radioValue1 = -1;

  void _handleRadioValueChange1(int value) {
    setState(() {
      _radioValue1 = value;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Quiz')),
  //        automaticallyImplyLeading: false,
),
        body: SingleChildScrollView(child: Column(
          children: [
            Container(
              height: 300,
              child: WebView(
                initialUrl: 'https://flutter.dev',
              ),
            ),
           Card(
             child: Column(
               children: [
                  Row(
                     children: [
                       new Radio(
                         value: 0,
                         groupValue: _radioValue1,
                         onChanged: _handleRadioValueChange1,
                       ),
                       new Text(
                         'Answer 1',
                         style: new TextStyle(fontSize: 16.0),
                       ),
                     ],
                   ),
                 Row(
                     children: [
                       new Radio(
                         value: 0,
                         groupValue: _radioValue1,
                         onChanged: _handleRadioValueChange1,
                       ),
                       new Text(
                         'Answer 2',
                         style: new TextStyle(fontSize: 16.0),
                       ),
                     ],
                   ),
                 Row(
                     children: [
                       new Radio(
                         value: 0,
                         groupValue: _radioValue1,
                         onChanged: _handleRadioValueChange1,
                       ),
                       new Text(
                         'Answer 3',
                         style: new TextStyle(fontSize: 16.0),
                       ),
                     ],
                   ),
                 Row(
                     children: [
                       new Radio(
                         value: 0,
                         groupValue: _radioValue1,
                         onChanged: _handleRadioValueChange1,
                       ),
                       new Text(
                         'Answer 4',
                         style: new TextStyle(fontSize: 16.0),
                       ),
                     ],
                   ),

               ],
             ),
           ),
            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8,top:2,bottom: 8),
              child: new Container(
                width: 300,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      side: BorderSide(color: Colors.blue)

                  ),
                  child: new Text(
                    'Submit',
                    style: new TextStyle(
                      color: Colors.white, fontSize: 20,

                    ),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => TeacherFeedBack()),);


                  },

                ),

              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:8.0,right: 8,top:2,bottom: 8),
              child: new Container(
                width: 300,
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(0.0),
                      side: BorderSide(color: Colors.blue)

                  ),
                  child: new Text(
                    'Help',
                    style: new TextStyle(
                      color: Colors.white, fontSize: 20,

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

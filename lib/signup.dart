import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'grades.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height:60),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Text('Sign Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Already a member? ',
                  style:TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 20),
                  children: <TextSpan>[
                    TextSpan(text: 'Log In', style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue,fontSize: 20)),
                  ],
                ),
              ),
            ),
            SizedBox(height:30),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: new Container(
                  height:50,
                  width:300,
                  child:RaisedButton.icon(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.blue[700])

                    ),
                    label: new Text(
                      'Sign Up with Facebook',
                      style: new TextStyle(
                        color: Colors.white,fontSize: 20,

                      ),
                    ),
                    icon: Icon(FontAwesomeIcons.facebook,color: Colors.white,),
                    color: Colors.blue[700],
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Grades()),);

                    },

                  ),

                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                height:50,
                width:300,
                child:RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blue)

                  ),
                  label: new Text(
                    'Sign Up with Google',
                    style: new TextStyle(
                      color: Colors.white,fontSize: 20,

                    ),
                  ),
                  icon: Icon(FontAwesomeIcons.google,color: Colors.white,),
                  color: Colors.blue,

                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Grades()),);

                  },

                ),

              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                height:50,
                width:300,
                child:RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.grey[800])

                  ),
                  label: new Text(
                    'Sign Up with Apple',
                    style: new TextStyle(
                      color: Colors.white,fontSize: 20,

                    ),
                  ),
                  icon: Icon(FontAwesomeIcons.apple,color: Colors.white,),
                  color: Colors.grey[800],

                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Grades()),);

                  },

                ),

              ),
            ),
            SizedBox(height:30),
            Container(child: Center(child: Text('________________Or_________________',style: TextStyle(fontWeight: FontWeight.bold),))),
            SizedBox(height:30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Container(
                height:50,
                width:300,
                child:RaisedButton.icon(
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.blue)

                  ),
                  label: new Text(
                    'Sign Up with Email',
                    style: new TextStyle(
                      color: Colors.white,fontSize: 20,

                    ),
                  ),
                  icon: Icon(Icons.email,color: Colors.white,),
                  color: Colors.blue,

                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Grades()),);

                  },

                ),

              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: RichText(
                text: TextSpan(
                  text: 'Join the site community.',
                  style:TextStyle(fontWeight: FontWeight.normal,color: Colors.black,fontSize: 18),
                  children: <TextSpan>[
                    TextSpan(text: 'Read More', style: TextStyle(fontWeight: FontWeight.normal,color: Colors.blue,fontSize: 18)),
                  ],
                ),
              ),
            ),



          ],

        ),
      ),
    );
  }
}

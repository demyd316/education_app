import 'package:flutter/material.dart';

import 'subject_topics.dart';

class Subject extends StatefulWidget {
  @override
  _SubjectState createState() => _SubjectState();
}

class _SubjectState extends State<Subject> {
  Color color;

  @override
  void initState(){
    super.initState();
    color = Colors.transparent;

  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title:  Container(
            margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5) ),child: Text('Subjects')),
//        automaticallyImplyLeading: false,
),
      body:ListView(
          children:
               [
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);


                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);
                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);
                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),
                 Divider(),
                ListTile(
                  leading: FlutterLogo(),
                  title: Text('Subject Name',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                  onTap: (){
                    setState(() {
                      color = Colors.grey[700];
                    });
                    Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectTopics()),);

                  },
                ),


              ]
          )

    );
  }
}

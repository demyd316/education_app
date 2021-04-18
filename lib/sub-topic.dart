import 'package:flutter/material.dart';

import 'subject_video.dart';

class SubTopic extends StatefulWidget {
  final String text;
  SubTopic({Key key, @required this.text}) : super(key: key);
  @override
  _SubTopicState createState() => _SubTopicState();
}

class _SubTopicState extends State<SubTopic> {
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
              margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5) ),child: Text(widget.text)),
  //        automaticallyImplyLeading: false,
),
      body: ListView(
        children: [
          ListTile(
            leading: FlutterLogo(),
            title: Text(widget.text+".1",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black
              )
              ,),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
             Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".1",)),);

            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".2",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".2",)),);
            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".3",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".3",)),);
            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".4",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".4",)),);
            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".5",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".5",)),);

            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".6",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".6",)),);

            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".7",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".7",)),);

            },
          ),
          Divider(),ListTile(                  leading: FlutterLogo(),

            title: Text(widget.text+".8",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
            onTap: (){
              setState(() {
                color = Colors.grey[700];
              });
              Navigator.push(context,MaterialPageRoute(builder: (context) => SubjectVideo(text: widget.text+".8",)),);

            },
          ),
          
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'subject.dart';

class Grades extends StatefulWidget {
  @override
  _GradesState createState() => _GradesState();
}

class _GradesState extends State<Grades> {
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
            margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5)-10 ),child: Text('Class Name')),
//        automaticallyImplyLeading: false,
),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ListView(
            children: [
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);

                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);

                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),
              Divider(),
                  ListTile(
                    leading: FlutterLogo(),
                    title: Text('Grades',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => Subject()),);


                    },
                  ),


                ]
            )

        ),

    );
  }

  }


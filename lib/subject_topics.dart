import 'package:flutter/material.dart';

import 'sub-topic.dart';
import 'subject_video.dart';

class SubjectTopics extends StatefulWidget {
  @override
  _SubjectTopicsState createState() => _SubjectTopicsState();
}

class _SubjectTopicsState extends State<SubjectTopics> {
  Color color;

  @override
  void initState(){
    super.initState();
    color = Colors.transparent;

  }

  ScrollController _scrollController = new ScrollController();

  bool showmore = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title:  Container(
            margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5) ),child: Text('Topics')),
//        automaticallyImplyLeading: false,
),
      body: Container(
        child: NotificationListener(
        onNotification: (t){

            if (t is ScrollEndNotification) {

              if(_scrollController.position.pixels !=0.0) {
                setState(() {
                  showmore = true;
                });
              }
            }

        },
        child:ListView(

            controller: _scrollController,
            children: [
            ListTile(                  leading: FlutterLogo(),

                    title: Text('Topic 1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 1" ,)),);

                    },
                  ),
              Divider(),ListTile(                  leading: FlutterLogo(),

                    title: Text('Topic 2',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 2" ,)),);


                    },

                  ),
                  Divider(),ListTile(                  leading: FlutterLogo(),

                    title: Text('Topic 3',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 3" ,)),);


                    },
                  ),

                  Divider(),ListTile(                  leading: FlutterLogo(),

                    title: Text('Topic 4',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 4" ,)),);


                    },
                  ),

                  Divider(),ListTile(                  leading: FlutterLogo(),

                    title: Text('Topic 5',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                    onTap: (){
                      setState(() {
                        color = Colors.grey[700];
                      });
                      Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 5" ,)),);


                    },

                  ),
              Divider(),ListTile(                  leading: FlutterLogo(),

                title: Text('Topic 6',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                onTap: (){
                  setState(() {
                    color = Colors.grey[700];
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 6" ,)),);


                },
              ),
              Divider(),ListTile(
                leading: FlutterLogo(),
                title: Text('Topic 7',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,color: Colors.black
                  ),),
                onTap: (){
                  setState(() {
                    color = Colors.grey[700];
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 7" ,)),);
                },
              ),
              Divider(),
              ListTile(                  leading: FlutterLogo(),

                
                title: Text('Topic 8',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                onTap: (){
                  setState(() {
                    color = Colors.grey[700];
                  });
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SubTopic(text:"Topic 8" ,)),);


                },
              ),
              




                ]
            )

        ),
        ),

    );
  }


}

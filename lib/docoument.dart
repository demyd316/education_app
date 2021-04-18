//import 'package:advance_pdf_viewer/advance_pdf_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cached_pdfview/flutter_cached_pdfview.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Docoument extends StatefulWidget {
  @override
  _DocoumentState createState() => _DocoumentState();
}

class _DocoumentState extends State<Docoument> {

  bool _isloading = true;
  //PDFDocument doc ;


  initState(){
    super.initState();
   // _loadPDF();
  }

  /*_loadPDF() async{
    print("Preparing doc ");
    PDFDocument temp = await PDFDocument.fromURL('http://www.africau.edu/images/default/sample.pdf');
    print(" Doc is here : ${temp}");
    setState(()  {
      doc = temp;
      _isloading = false;
    });

  }*/

  @override
  Widget build(BuildContext context) {

    print("Total width ${MediaQuery.of(context).size.width}");

    return Scaffold(
        appBar: AppBar(
          title: Container(
              margin: EdgeInsets.only(left:(MediaQuery.of(context).size.width/5) ),
              child: Text('Document'))
  //        automaticallyImplyLeading: false,
        ),
        body:Center(
            child: PDF(
                  swipeHorizontal: false,
                  ).cachedFromUrl('https://www.fluentu.com/blog/english/wp-content/uploads/sites/4/2015/04/FluentU-The-Complete-Guide-to-Instant-English-Immersion.pdf'),
        )
          /*Column(
          children: [
            *//*Container(
              height: MediaQuery.of(context).size.height,
              child:
            ),*//*
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                children: [
                Padding(
                padding: const EdgeInsets.all(8.0),
                 child: new Container(
                    height:50,
                    width:140,
                   child:RaisedButton(
                  shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(0.0),
                    side: BorderSide(color: Colors.blue)

                   ),
                child: new Text(
                'Send to Email',
                    style: new TextStyle(
                   color: Colors.white,fontSize: 15,

                ),
                ),
                color: Colors.blue,

                onPressed: (){
                },

                ),

                ),
                ),
                ],
              ),
          ],
        ))])
    */
    ,floatingActionButton: FloatingActionButton(onPressed: (){}, child: Icon(Icons.mail_outline)),

    );
  }
}

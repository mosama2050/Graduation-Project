import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:v1/Screens/AcademicAdvising/classadv.dart';

const String _documentPath = 'pdf/1.pdf';

class MyHomePaged extends StatefulWidget {
  MyHomePaged({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePaged> {
  // This moves the PDF file from the assets to a place accessible by our PDF viewer.
  Future<String> prepareTestPdf() async {
    final ByteData bytes =
        await DefaultAssetBundle.of(context).load(_documentPath);
    final Uint8List list = bytes.buffer.asUint8List();

    final tempDir = await getTemporaryDirectory();
    final tempDocumentPath = '${tempDir.path}/$_documentPath';

    final file = await File(tempDocumentPath).create(recursive: true);
    file.writeAsBytesSync(list);
    return tempDocumentPath;
  }
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text("Academic Advising"),
      ),
      body: Container(padding: EdgeInsets.all(50),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xff01A0C7),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: ()  {
                prepareTestPdf().then((path) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullPdfViewerScreen(path)),
                  );
                });
              },
              child: Text("Open PDF  Offline ",
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),SizedBox(height: 30,),
        Text("OR ",textAlign: TextAlign.center,

          style: TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),)
        ,SizedBox(height: 30,),
            Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xff01A0C7),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              onPressed: ()  {
                prepareTestPdf().then((path) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => FullPdfViewerScreen(path)),
                  );
                });
              },
              child: Text("Vist Our Web Site",
                  textAlign: TextAlign.center,
                  style: style.copyWith(
                      color: Colors.white, fontWeight: FontWeight.bold)),
            ),
          ),
           

          ],
        ),
      ),
    );
  }
}

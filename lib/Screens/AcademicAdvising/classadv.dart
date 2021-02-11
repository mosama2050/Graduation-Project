
import 'package:flutter/material.dart';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_full_pdf_viewer/full_pdf_viewer_scaffold.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/cupertino.dart';
const String _documentPath = 'PDFs/Guide-v4.pdf';

class FullPdfViewerScreen extends StatelessWidget {
  final String pdfPath;

  FullPdfViewerScreen(this.pdfPath);

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
        appBar: AppBar(
      backgroundColor: Colors.grey,
      title: Text("Academic Advising PDF"),
    ),
        path: pdfPath);
  }
}
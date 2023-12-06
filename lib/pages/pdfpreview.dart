import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import '../models/invoice.dart';
import 'pdfexport.dart';

class PdfPreviewPage extends StatelessWidget {
  // final Invoice invoice;
  const PdfPreviewPage({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Preview'),
      ),
      body: PdfPreview(
        build: (context) => makePdf(),
      ),
    );
  }
}

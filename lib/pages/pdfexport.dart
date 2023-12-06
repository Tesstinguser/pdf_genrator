import 'dart:ffi';
import 'dart:typed_data';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../models/invoice.dart';

Future<Uint8List> makePdf() async {
  final pdf = Document();
  final imageLogo = MemoryImage(
      (await rootBundle.load('assets/technical_logo.png'))
          .buffer
          .asUint8List());
  pdf.addPage(
    Page(
      build: (context) {
        return Column(
          children: [
            // Divider(),
            Container(
              padding: EdgeInsets.only(left: 3, right: 50),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(width: 1),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "GUJARAT FREIGHT TOOLS",
                        style: TextStyle(
                            color: PdfColors.purpleAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                      Text(
                        "Manufacuring & Supply of Precision Press Tool & Room Component   ",
                        style: TextStyle(
                            color: PdfColors.white,
                            background: BoxDecoration(color: PdfColors.green)),
                      ),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("64,Akshay industrial Estate"),
                                  Text("Near New Cloath market"),
                                  Text("Ahemdabad-38562"),
                                ]),
                            SizedBox(width: 62),
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Row(children: [
                                    Text("Tel : "),
                                    Text("1234567890"),
                                  ]),
                                  Row(children: [
                                    Text("Web : "),
                                    Text("www.webshree.com"),
                                  ]),
                                  Row(children: [
                                    Text("Email : "),
                                    Text("abcdefgh@gmail.com"),
                                  ]),
                                ]),
                          ]),
                    ],
                    // crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: Image(imageLogo, height: 200, width: 100),
                  ),
                ],
              ),
            ),
            SizedBox(width: 10),
            Container(
              padding: EdgeInsets.only(right: 0, left: 3),
              decoration: BoxDecoration(
                  border: Border(
                      left: BorderSide(
                        width: 1,
                      ),
                      right: BorderSide(width: 1),
                      top: BorderSide(width: 1))),
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Row(children: [
                      Text('GSTIN : '),
                      Text('24HDE7487RE5RT4'),
                    ]),
                    SizedBox(width: 50),
                    Text('TAX INVOICE',
                          style: TextStyle(color: PdfColors.purple)),
                    SizedBox(width: 37),
                    Text('ORIGINAL FOR RECIPIENT'),
                  ]),
            ),
            // Row(
            //
            //   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   // mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Row(children: [Text('GSTIN : '),Text('24HDE7487RE5RT4'),
            //       ]),
            //       SizedBox(width:58),
            //       Text('TAX INVOICE'),
            //       SizedBox(width: 40),
            //       Text('ORIGINAL FOR RECIPIENT'),
            //     ]),
            Divider(
              height: 0,
              indent: 0,
              thickness: 1,
            ),

            Row(children: [
              Container(
                  padding: EdgeInsets.only(left: 5, right: 5, top: 3),
                  width: 200,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  // color: PdfColors.white,
                  child: Column(children: [
                    Text('Customer Details'),
                    Divider(),
                    Row(children: [
                      Text('M/s'),
                      SizedBox(width: 30),
                      Text('Kevin Motors'),
                    ]),
                    Row(children: [
                      Text('Adress'),
                      SizedBox(width: 12),
                      Text(
                        "Chandani Chok, New Delhi",
                      ),
                    ]),
                    Row(children: [
                      Text('phone'),
                      SizedBox(width: 16),
                      Text('9372346666'),
                    ]),
                    Row(children: [
                      Text('gstin'),
                      SizedBox(width: 24),
                      Text('07AOLCC1206D1ZG'),
                    ]),
                    Row(children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text('place of '),
                            Text('Supply'),
                          ]),
                      SizedBox(width: 5),
                      Text('Delhi'),
                    ]),
                  ])),
              Container(
                  padding: EdgeInsets.only(left: 3, right: 0, top: 3),
                  width: 283,
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  // color: PdfColors.deepPurple,
                  child: Column(children: [
                    Row(children: [
                      Text('Invoice no.'),
                      SizedBox(width: 10),
                      Text('GST112020'),
                      SizedBox(width: 8),
                      Text('Invoice date'),
                      SizedBox(width: 0),
                      Text(' 04-Mar-2020'),
                    ]),
                    SizedBox(
                      height: 7,
                    ),
                    Row(children: [
                      Text('Challan no'),
                      SizedBox(width: 11),
                      Text('865'),
                      SizedBox(width: 50),
                      Text('Challan date'),
                      SizedBox(width: 2.5),
                      Text('03-Mar-2020'),
                    ]),
                    SizedBox(
                      height: 7,
                    ),
                    Row(children: [
                      Text('P.O. No. '),
                      SizedBox(width: 19),
                      Text('66'),
                    ]),
                    SizedBox(
                      height: 7,
                    ),
                    Row(children: [
                      Text('delivery date'),
                      SizedBox(width: 1),
                      Text('04-Mar-2020'),
                      SizedBox(width: 5),
                      Text('Reverse Charge'),
                      SizedBox(width: 8),
                      Text('No'),
                    ]),
                    SizedBox(
                      height: 7,
                    ),
                    Row(children: [
                      Text('L.R. No'),
                      SizedBox(width: 25),
                      Text('958'),
                      SizedBox(width: 50),
                      Text('Due date'),
                      SizedBox(width: 24),
                      Text('19-Mar-2020'),
                    ]),
                    SizedBox(
                      height: 1,
                    ),
                    Row(children: [
                      Text('E-Way No.'),
                      SizedBox(width: 10),
                      Text('EWB54864584'),
                    ]),
                  ])),
            ]),

            Container(
              decoration: BoxDecoration(border: Border(left: BorderSide(width: 1),right:  BorderSide(width: 1))),
              padding: EdgeInsets.only(top: 10),
              // color: PdfColors.green,
              child: Row(children: [
                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("Sr.No.")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),
                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("Name of Product ")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),
                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("HSN/SAC")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),
                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("qty ")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),
                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("Rate  ")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),
                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("texable value   ")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),

                Container(
                  padding: EdgeInsets.only(left: 0, top: 0),
                  child: Column(children: [
                    Container(
                        padding: EdgeInsets.all(7),
                        width: 72,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(border: Border.all(width: 1)),
                        child: Text("IGST")),
                    Row(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 20,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                          child: Text("%")),
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 20,
                          decoration:
                              BoxDecoration(border: Border.all(width: 1)),
                          child: Text("Amount")),
                    ]),

                    // Row(
                    //   mainAxisAlignment: MainAxisAlignment.start,
                    //   children: [
                    //     Column(
                    //       children: [
                    //         Text('a'),
                    //       ]
                    //     ),
                    //
                    //     Column(
                    //         children: [
                    //           Text('a'),
                    //         ]
                    //     ),
                    //   ]
                    // )
                    Row(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 20,
                          decoration: BoxDecoration(border: Border()),
                          child: Text("9.00")),
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(width: 1),
                                  right: BorderSide(width: 1))),
                          child: Text("52.74")),
                    ]),
                    Row(children: [
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 20,
                          decoration: BoxDecoration(border: Border()),
                          child: Text("9.00")),
                      Container(
                          padding: EdgeInsets.all(5),
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border(
                                  left: BorderSide(width: 1),
                                  right: BorderSide(width: 1))),
                          child: Text("52.74")),
                    ]),
                    // Row(children: [
                    //   Container(
                    //       padding: EdgeInsets.all(5),
                    //       height: 20,
                    //       decoration: BoxDecoration(
                    //           border: Border(bottom: BorderSide(width: 1))),
                    //       child: Text("9.00")),
                    //   Container(
                    //       padding: EdgeInsets.all(5),
                    //       height: 20,
                    //       decoration: BoxDecoration(
                    //           border: Border(
                    //               left: BorderSide(width: 1),
                    //               right: BorderSide(width: 1),
                    //               bottom: BorderSide(width: 1))),
                    //       child: Text("52.74")),
                    // ]),
                    SizedBox(
                        height: 170,width: 10
                    )
                  ]),
                ),

                Container(
                    padding: EdgeInsets.only(left: 0, top: 5),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Column(children: [
                      Container(
                          padding: EdgeInsets.only(left: 5, right: 5),
                          decoration: BoxDecoration(
                              border: Border(bottom: BorderSide(width: 1))),
                          child: Text("total ")),
                      Text("1"),
                      Text("2"),
                      SizedBox(height: 210)
                    ])),

                // Container(padding: EdgeInsets.all(5),height: 20,decoration: BoxDecoration(border: Border.all(width:1)),child: Text('Name of product/service')),
                // Container(padding: EdgeInsets.all(5),height: 20,decoration: BoxDecoration(border: Border.all(width:1)),child: Text("hsn/sac")),
                // Container(padding: EdgeInsets.all(5),height: 20,decoration: BoxDecoration(border: Border.all(width:1)),child: Text("Qty")),
                // Container(padding: EdgeInsets.all(5),height: 20,decoration: BoxDecoration(border: Border.all(width:1)),child: Text("rate")),
                // Container(padding: EdgeInsets.all(5),height: 20,decoration: BoxDecoration(border: Border.all(width:1)),child: Text("texable value")),
                // Container(padding: EdgeInsets.all(5),height: 20,decoration: BoxDecoration(border: Border.all(width:1)),child: Text("Total")),
              ]),
            ),
            Row(children: [
              Container(
                  margin: EdgeInsets.only(left: 0),
                  padding: EdgeInsets.only(left: 180),
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1),
                          left: BorderSide(width: 1),
                          bottom: BorderSide(width: 1))),
                  child: Text('Total ')),
              Container(
                  margin: EdgeInsets.only(left: 0),
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1),
                          bottom: BorderSide(width: 1))),
                  child: Text(' 2.00 ')),
              Container(
                  margin: EdgeInsets.only(left: 0),
                  padding: EdgeInsets.only(left: 81.5),
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 1),
                          bottom: BorderSide(width: 1),
                          left: BorderSide(width: 1))),
                  child: Text('1,154.00 ')),
              // Container(
              //     decoration: BoxDecoration(
              //         border: Border(
              //             left: BorderSide(width: 1),
              //             right: BorderSide(width: 1),
              //             bottom: BorderSide(width: 1))),
              //     margin: EdgeInsets.only(top: 14),
              //     width: 35),
              SizedBox(width: 35,child: Container(margin: EdgeInsets.only(bottom: 13),decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))))),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(width: 1),
                          top: BorderSide(width: 1),
                          right: BorderSide(width: 1),
                          bottom: BorderSide(width: 1))),
                  child: Text(" 103.8  ")),
              Container(
                  decoration: BoxDecoration(
                      border: Border(
                          left: BorderSide(width: 1),
                          right: BorderSide(width: 1),
                          bottom: BorderSide(width: 1))),
                  child: Text(" 1,257 ")),
            ]),
            // Divider(),
            Row(children: [
              Container(
                  padding: EdgeInsets.only(left: 4, right: 3, bottom: 5,top: 0),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  width: 250,
                  // color: PdfColors.white,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Total ion words'),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Text(
                            'one thousand two hundred and fifty eight rupees only'),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),

                        Text('Bank Details'),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Row(children: [
                          Text('Bank Name'),
                          SizedBox(width: 45),
                          Text("SBI"),
                        ]),
                        Row(children: [
                          Text('Branch Name '),
                          SizedBox(width: 31),
                          Text('RAF CAMP'),
                        ]),
                        Row(children: [
                          Text('Bank Ac. Number'),
                          SizedBox(width: 15),
                          Text('2000000004512'),
                        ]),
                        Row(children: [
                          Text('Bank Branch IFSC'),
                          SizedBox(width: 10),
                          Text('SBIN0000488'),
                        ]),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Text("Terms and Conditions"),
                          Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Text("1. Subject to Ahmedabad Jurisdiction"),
                        Text(
                            "2. Our responsibility ceases as soon as the goods leave our premises."),
                        Text("3. Goods once sold will not be retutn."),
                        Text("4. Delivery ex-premises."),
                      ])),
              Container(
                  width: 233,
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: BoxDecoration(border: Border.all(width: 1)),
                  // color: PdfColors.deepPurple,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Divider(),
                        // SizedBox(height: 20),
                          Row(children: [
                          Text("Teaxable amount"),
                          Spacer(),
                          Text("1,154"),
                        ]),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Row(children: [
                          Text("Add : IGST"),
                          Spacer(),
                          Text("103.86"),
                        ]),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Row(children: [
                          Text("Total Tax"),
                          Spacer(),
                          Text("103.86"),
                        ]),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Row(children: [
                          Text("Total Amount After Tax "),
                          Spacer(),
                          Text("1258.00"),
                        ]),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),
                        Row(children: [
                          Text("GST Payable on Reverse Charge"),
                          Spacer(),
                          Text("N.A."),
                        ]),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),

                        Text('Certified that the particulars'),
                        SizedBox(height: 2),
                        Text('given above are true and correct'),
                        SizedBox(height: 2),
                        Text('For Gujarat Freight Tools'),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),

                        SizedBox(height: 60),
                        Divider(
                          height: 0,
                          indent: 0,
                          thickness: 1,
                        ),

                        Text("Authorised Signatory"),
                        // Divider(),
                      ])),
            ]),
            // Divider(),
            // Container(height: 50),
            // Table(
            //   border: TableBorder.all(color: PdfColors.black),
            //   children: [
            //     TableRow(
            //       children: [
            //         Padding(
            //           child: Text(
            //             'INVOICE FOR PAYMENT',
            //             style: Theme.of(context).header4,
            //             textAlign: TextAlign.center,
            //           ),
            //           padding: EdgeInsets.all(20),
            //         ),
            //       ],
            //     ),
            //     ...invoice.items.map(
            //       (e) => TableRow(
            //         children: [
            //           Expanded(
            //             child: PaddedText(e.description),
            //             flex: 2,
            //           ),
            //           Expanded(
            //             child: PaddedText("\$${e.cost}"),
            //             flex: 1,
            //           )
            //         ],
            //       ),
            //     ),
            //     TableRow(
            //       children: [
            //         PaddedText('TAX', align: TextAlign.right),
            //         PaddedText(
            //             '\$${(invoice.totalCost() * 0.1).toStringAsFixed(2)}'),
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         PaddedText('TOTAL', align: TextAlign.right),
            //         PaddedText(
            //             '\$${(invoice.totalCost() * 1.1).toStringAsFixed(2)}')
            //       ],
            //     ),
            //
            //   ],
            // ),
            // Padding(
            //   child: Text(
            //     "THANK YOU FOR YOUR CUSTOM!",
            //     style: Theme.of(context).header2,
            //   ),
            //   padding: EdgeInsets.all(20),
            // ),
            // Text(
            //     "Please forward the below slip to your accounts payable department."),
            // Divider(
            //   height: 1,
            //   borderStyle: BorderStyle.dashed,
            // ),
            // Container(height: 50),
            // Table(
            //   border: TableBorder.all(color: PdfColors.black),
            //   children: [
            //     TableRow(
            //       children: [
            //         PaddedText('Account Number'),
            //         PaddedText(
            //           '1234 1234',
            //         )
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         PaddedText(
            //           'Account Name',
            //         ),
            //         PaddedText(
            //           'ADAM FAMILY TRUST',
            //         )
            //       ],
            //     ),
            //     TableRow(
            //       children: [
            //         PaddedText(
            //           'Total Amount to be Paid',
            //         ),
            //         PaddedText(
            //             '\$${(invoice.totalCost() * 1.1).toStringAsFixed(2)}')
            //       ],
            //     )
            //   ],
            // ),
            // Padding(
            //   padding: EdgeInsets.all(30),
            //   child: Text(
            //     'Please ensure all cheques are payable to the ADAM FAMILY TRUST.',
            //     style: Theme.of(context).header3.copyWith(
            //           fontStyle: FontStyle.italic,
            //         ),
            //     textAlign: TextAlign.center,
            //   ),
            // ),
          ],
        );
      },
    ),
  );
  return pdf.save();
}

Widget PaddedText(
  final String text, {
  final TextAlign align = TextAlign.left,
}) =>
    Padding(
      padding: EdgeInsets.all(10),
      child: Text(
        text,
        textAlign: align,
      ),
    );

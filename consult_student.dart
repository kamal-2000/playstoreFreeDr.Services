import 'package:auto_size_text/auto_size_text.dart';

import 'package:flutter/rendering.dart';
import 'videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_linkify/flutter_linkify.dart';

void main(List<String> args) {}

class consult_student extends StatefulWidget {
  @override
  _consult_studentState createState() => _consult_studentState();
}

class _consult_studentState extends State<consult_student> {
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FreeDr.Services",
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        home: SafeArea(
            child: Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(
                  context,
                );
              },
            ),
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.blueGrey,
            brightness: Brightness.light,
            elevation: 0,
            title: Center(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
          ),
          body: LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth < 380) {
                return _build350consultyoga();
              } else {
                return _build500consultyoga();
              }
            },
          ),
        )));
  }

  Widget _build350consultyoga() {
    return _loading
        ? spinkit
        : SafeArea(
            child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(244, 243, 243, 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.black87,
                              ),
                              hintText: "Search Students",
                              hintStyle:
                                  TextStyle(color: Colors.grey, fontSize: 15)),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                      child: Text("Students Available Right Now",
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.w600)))
                ]),
                SizedBox(height: 15),
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 240,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.brown[200],
                                boxShadow: [BoxShadow(blurRadius: 12)],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 0),
                                          child: Image.network(
                                              "https://i.ibb.co/wQ2Kd0s/rohitsir.png",
                                              height: 145,
                                              width: 100)),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              IntrinsicHeight(
                                                  child: Row(children: [
                                                Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(10, 15, 0, 0),
                                                    child: Text(
                                                      "Jaipur National University",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )),
                                                Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: VerticalDivider(
                                                      thickness: 1,
                                                      color: Colors.blueGrey),
                                                ),
                                              ])),
                                            ]),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 1, 0, 0),
                                                child: Text(
                                                  "Jaipur",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 07, 0, 0),
                                              child: Text(
                                                  ("Mr. Rohit Kumar Purohit"),
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            Container(
                                              width: 90,
                                              height: 23,
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Center(
                                                child: Text(
                                                  "Teacher",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.blueGrey),
                                            ),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "B.sc , M.sc",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Teacher",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 5, 0, 0),
                                                child: Row(children: [
                                                  Icon(
                                                    Icons.language,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    " Speaks : English , हिंदी",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ))
                                                ]))
                                          ])
                                    ]),
                                Divider(
                                  thickness: 1,
                                  color: Colors.blueGrey,
                                  endIndent: 20,
                                  indent: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  03, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(Icons
                                                      .play_circle_outline))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return rohitknowmore();
                                                }));
                                              },
                                              child: Text(
                                                "Know more",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 00, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: 40,
                                        width: 105,
                                        child: Row(children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(
                                                      Icons.phone_iphone))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return rohitconsultpage();
                                                }));
                                              },
                                              child: Text(
                                                "Consult Now",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          )
                                        ]))
                                  ],
                                ),
                              ])),
                        ],
                      ))
                ]),
                SizedBox(height: 20),
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 235,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.brown[200],
                                boxShadow: [BoxShadow(blurRadius: 12)],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 0),
                                          child: Image.network(
                                              "https://i.ibb.co/3RZ3g0Y/aakanshamam.png",
                                              height: 145,
                                              width: 100)),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              IntrinsicHeight(
                                                  child: Row(children: [
                                                Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(10, 15, 0, 0),
                                                    child: Text(
                                                      ("Sdm College of Ayurveda"),
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w800),
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                    )),
                                                Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: VerticalDivider(
                                                      thickness: 1,
                                                      color: Colors.blueGrey),
                                                ),
                                              ])),
                                            ]),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 0, 0, 0),
                                                child: AutoSizeText(
                                                  "Hassan",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                                  maxLines: 2,
                                                )),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 07, 0, 0),
                                              child: Text(("Dr. Aakanksha"),
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            Container(
                                              width: 90,
                                              height: 23,
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Center(
                                                child: Text(
                                                  "Student",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.blueGrey),
                                            ),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "2nd Year PG Scholar",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 5, 0, 0),
                                                child: Row(children: [
                                                  Icon(
                                                    Icons.language,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    " Speaks : English , हिंदी",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ))
                                                ]))
                                          ])
                                    ]),
                                Divider(
                                  thickness: 1,
                                  color: Colors.blueGrey,
                                  endIndent: 20,
                                  indent: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  03, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(Icons
                                                      .play_circle_outline))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return aakanshaknowmore();
                                                }));
                                              },
                                              child: Text(
                                                "Know more",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            0, 0, 00, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: 40,
                                        width: 105,
                                        child: Row(children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(
                                                      Icons.phone_iphone))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return aakanshaconsultpage();
                                                }));
                                              },
                                              child: Text(
                                                "Consult Now",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          )
                                        ]))
                                  ],
                                ),
                              ])),
                        ],
                      ))
                ]),
                SizedBox(height: 20),
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 235,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.brown[200],
                                boxShadow: [BoxShadow(blurRadius: 12)],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 0),
                                          child: Image.network(
                                              "https://i.ibb.co/f0zSr6x/jaistudent.png",
                                              height: 145,
                                              width: 100)),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              IntrinsicHeight(
                                                  child: Row(children: [
                                                Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(10, 15, 0, 0),
                                                    child: Text(
                                                      "Rajmata Vijiya Raje College",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )),
                                                Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: VerticalDivider(
                                                      thickness: 1,
                                                      color: Colors.blueGrey),
                                                ),
                                              ])),
                                            ]),
                                            Column(children: [
                                              Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 0, 0, 0),
                                                  child: Text(
                                                    "Bhilwara",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ))
                                            ]),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 07, 0, 0),
                                              child: Text(
                                                  ("Mr. Jai Kumar longani"),
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            Container(
                                              width: 90,
                                              height: 23,
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Center(
                                                child: Text(
                                                  "Student",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.blueGrey),
                                            ),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "3rd year MBBS",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 5, 0, 0),
                                                child: Row(children: [
                                                  Icon(
                                                    Icons.language,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    " Speaks : English , हिंदी",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ))
                                                ]))
                                          ])
                                    ]),
                                Divider(
                                  thickness: 1,
                                  color: Colors.blueGrey,
                                  endIndent: 20,
                                  indent: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 105,
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  03, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(Icons
                                                      .play_circle_outline))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return jaiknowmore();
                                                }));
                                              },
                                              child: Text(
                                                "Know more",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 00, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: 40,
                                        width: 105,
                                        child: Row(children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(
                                                      Icons.phone_iphone))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return jaiconsultpage();
                                                }));
                                              },
                                              child: Text(
                                                "Consult Now",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          )
                                        ]))
                                  ],
                                ),
                              ])),
                        ],
                      ))
                ]),
                SizedBox(height: 20),
                Column(children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                              height: 240,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.brown[200],
                                boxShadow: [BoxShadow(blurRadius: 12)],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(children: [
                                Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin: const EdgeInsets.fromLTRB(
                                              10, 10, 0, 0),
                                          child: Image.network(
                                              "https://i.ibb.co/Q8hkYPq/yatinstudent.png",
                                              height: 145,
                                              width: 100)),
                                      Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(children: [
                                              IntrinsicHeight(
                                                  child: Row(children: [
                                                Container(
                                                    margin: const EdgeInsets
                                                        .fromLTRB(10, 15, 0, 0),
                                                    child: Text(
                                                      "Rajmata Vijiya Raje College",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    )),
                                                Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          0, 15, 0, 0),
                                                  child: VerticalDivider(
                                                      thickness: 1,
                                                      color: Colors.blueGrey),
                                                ),
                                              ])),
                                            ]),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 0, 0, 0),
                                                child: Text(
                                                  "Bhilwara",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 10, 0, 0),
                                              child: Text(("Mr. Yatin Golecha"),
                                                  style: TextStyle(
                                                      fontSize: 13,
                                                      fontWeight:
                                                          FontWeight.w600)),
                                            ),
                                            Container(
                                              width: 90,
                                              height: 23,
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Center(
                                                child: Text(
                                                  "Student",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(5),
                                                  color: Colors.blueGrey),
                                            ),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "3rd year MBBS",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        5, 5, 0, 0),
                                                child: Row(children: [
                                                  Icon(
                                                    Icons.language,
                                                    color: Colors.blueGrey,
                                                  ),
                                                  Container(
                                                      child: Text(
                                                    " Speaks : English , हिंदी",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ))
                                                ]))
                                          ])
                                    ]),
                                Divider(
                                  thickness: 1,
                                  color: Colors.blueGrey,
                                  endIndent: 20,
                                  indent: 20,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  03, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(Icons
                                                      .play_circle_outline))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: GestureDetector(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return yatinknowmore();
                                                }));
                                              },
                                              child: Text(
                                                "Know more",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 0, 00, 0),
                                        decoration: BoxDecoration(
                                          color: Colors.blueGrey,
                                          borderRadius:
                                              BorderRadius.circular(5),
                                        ),
                                        height: 40,
                                        width: 105,
                                        child: Row(children: [
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  0, 3, 0, 0),
                                              child: Center(
                                                  child: Icon(
                                                      Icons.phone_iphone))),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                0, 3, 0, 0),
                                            child: InkWell(
                                              onTap: () {
                                                Navigator.push(context,
                                                    MaterialPageRoute<void>(
                                                        builder: (BuildContext
                                                            context) {
                                                  return yatinconsultpage();
                                                }));
                                              },
                                              child: Text(
                                                "Consult Now",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ),
                                          )
                                        ]))
                                  ],
                                ),
                              ])),
                        ],
                      ))
                ]),
                SizedBox(height: 20)
              ])));
  }

  Widget _build500consultyoga() {
    return _loading
        ? spinkit
        : SafeArea(
            child: SingleChildScrollView(
                child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: Color.fromRGBO(244, 243, 243, 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black87,
                                ),
                                hintText: "Search Students",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                      ])),
              SizedBox(height: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Students Available Right Now",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600)))
              ]),
              SizedBox(height: 15),
              Column(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 240,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                              boxShadow: [BoxShadow(blurRadius: 12)],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Image.network(
                                            "https://i.ibb.co/wQ2Kd0s/rohitsir.png",
                                            height: 145,
                                            width: 100)),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            IntrinsicHeight(
                                                child: Row(children: [
                                              Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 15, 0, 0),
                                                  child: Text(
                                                    "Jaipur National University",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 0),
                                                child: VerticalDivider(
                                                    thickness: 1,
                                                    color: Colors.blueGrey),
                                              ),
                                            ])),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 0),
                                                child: Text(
                                                  "Jaipur",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))
                                          ]),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 10, 0, 0),
                                            child: Text(
                                                ("Mr. Rohit Kumar Purohit"),
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 23,
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Center(
                                              child: Text(
                                                "Teacher",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blueGrey),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "B.sc , M.sc",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Teacher",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  5, 5, 0, 0),
                                              child: Row(children: [
                                                Icon(
                                                  Icons.language,
                                                  color: Colors.blueGrey,
                                                ),
                                                Container(
                                                    child: Text(
                                                  " Speaks : English , हिंदी",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))
                                              ]))
                                        ])
                                  ]),
                              Divider(
                                thickness: 1,
                                color: Colors.blueGrey,
                                endIndent: 20,
                                indent: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 00, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    height: 40,
                                    width: 130,
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 3, 0, 0),
                                            child: Center(
                                                child: Icon(Icons
                                                    .play_circle_outline))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return rohitknowmore();
                                              }));
                                            },
                                            child: Text(
                                              "Know more",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          5, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 130,
                                      child: Row(children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                5, 3, 0, 0),
                                            child: Center(
                                                child:
                                                    Icon(Icons.phone_iphone))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return rohitconsultpage();
                                              }));
                                            },
                                            child: Text(
                                              "Consult Now",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        )
                                      ]))
                                ],
                              ),
                            ])),
                      ],
                    ))
              ]),
              SizedBox(height: 20),
              Column(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 240,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                              boxShadow: [BoxShadow(blurRadius: 12)],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Image.network(
                                            "https://i.ibb.co/3RZ3g0Y/aakanshamam.png",
                                            height: 145,
                                            width: 100)),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            IntrinsicHeight(
                                                child: Row(children: [
                                              Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 15, 0, 0),
                                                  child: Text(
                                                    ("Sdm College of Ayurveda"),
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w800),
                                                    maxLines: 1,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )),
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 0),
                                                child: VerticalDivider(
                                                    thickness: 1,
                                                    color: Colors.blueGrey),
                                              ),
                                            ])),
                                          ]),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: AutoSizeText(
                                                "Hassan",
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                ),
                                                maxLines: 2,
                                              )),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 10, 0, 0),
                                            child: Text(("Dr. Aakanksha"),
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 23,
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Center(
                                              child: Text(
                                                "Student",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blueGrey),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "2nd Year PG Scholar",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  5, 5, 0, 0),
                                              child: Row(children: [
                                                Icon(
                                                  Icons.language,
                                                  color: Colors.blueGrey,
                                                ),
                                                Container(
                                                    child: Text(
                                                  " Speaks : English , हिंदी",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))
                                              ]))
                                        ])
                                  ]),
                              Divider(
                                thickness: 1,
                                color: Colors.blueGrey,
                                endIndent: 20,
                                indent: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 00, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    height: 40,
                                    width: 130,
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 3, 0, 0),
                                            child: Center(
                                                child: Icon(Icons
                                                    .play_circle_outline))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return aakanshaknowmore();
                                              }));
                                            },
                                            child: Text(
                                              "Know more",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          5, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 130,
                                      child: Row(children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                5, 3, 0, 0),
                                            child: Center(
                                                child:
                                                    Icon(Icons.phone_iphone))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return aakanshaconsultpage();
                                              }));
                                            },
                                            child: Text(
                                              "Consult Now",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        )
                                      ]))
                                ],
                              ),
                            ])),
                      ],
                    ))
              ]),
              SizedBox(height: 20),
              Column(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 240,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                              boxShadow: [BoxShadow(blurRadius: 12)],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Image.network(
                                            "https://i.ibb.co/f0zSr6x/jaistudent.png",
                                            height: 145,
                                            width: 100)),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            IntrinsicHeight(
                                                child: Row(children: [
                                              Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 15, 0, 0),
                                                  child: Text(
                                                    "Rajmata Vijiya Raje College",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 0),
                                                child: VerticalDivider(
                                                    thickness: 1,
                                                    color: Colors.blueGrey),
                                              ),
                                            ])),
                                          ]),
                                          Column(children: [
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 0, 0, 0),
                                                child: Text(
                                                  "Bhilwara",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))
                                          ]),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 10, 0, 0),
                                            child: Text(
                                                ("Mr. Jai Kumar longani"),
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 23,
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Center(
                                              child: Text(
                                                "Student",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blueGrey),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "3rd year MBBS",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  5, 5, 0, 0),
                                              child: Row(children: [
                                                Icon(
                                                  Icons.language,
                                                  color: Colors.blueGrey,
                                                ),
                                                Container(
                                                    child: Text(
                                                  " Speaks : English , हिंदी",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))
                                              ]))
                                        ])
                                  ]),
                              Divider(
                                thickness: 1,
                                color: Colors.blueGrey,
                                endIndent: 20,
                                indent: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 00, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    height: 40,
                                    width: 130,
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 3, 0, 0),
                                            child: Center(
                                                child: Icon(Icons
                                                    .play_circle_outline))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return jaiknowmore();
                                              }));
                                            },
                                            child: Text(
                                              "Know more",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          5, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 130,
                                      child: Row(children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                5, 3, 0, 0),
                                            child: Center(
                                                child:
                                                    Icon(Icons.phone_iphone))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return jaiconsultpage();
                                              }));
                                            },
                                            child: Text(
                                              "Consult Now",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        )
                                      ]))
                                ],
                              ),
                            ])),
                      ],
                    ))
              ]),
              SizedBox(height: 20),
              Column(children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                            height: 240,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.brown[200],
                              boxShadow: [BoxShadow(blurRadius: 12)],
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        alignment: Alignment.centerLeft,
                                        margin: const EdgeInsets.fromLTRB(
                                            10, 10, 0, 0),
                                        child: Image.network(
                                            "https://i.ibb.co/Q8hkYPq/yatinstudent.png",
                                            height: 145,
                                            width: 100)),
                                    Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(children: [
                                            IntrinsicHeight(
                                                child: Row(children: [
                                              Container(
                                                  margin:
                                                      const EdgeInsets.fromLTRB(
                                                          10, 15, 0, 0),
                                                  child: Text(
                                                    "Rajmata Vijiya Raje College",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  )),
                                              Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        0, 15, 0, 0),
                                                child: VerticalDivider(
                                                    thickness: 1,
                                                    color: Colors.blueGrey),
                                              ),
                                            ])),
                                          ]),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 0, 0, 0),
                                              child: Text(
                                                "Bhilwara",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 10, 0, 0),
                                            child: Text(("Mr. Yatin Golecha"),
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600)),
                                          ),
                                          Container(
                                            width: 90,
                                            height: 23,
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 5, 0, 0),
                                            child: Center(
                                              child: Text(
                                                "Student",
                                                style: TextStyle(
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                color: Colors.blueGrey),
                                          ),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "3rd year MBBS",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  5, 5, 0, 0),
                                              child: Row(children: [
                                                Icon(
                                                  Icons.language,
                                                  color: Colors.blueGrey,
                                                ),
                                                Container(
                                                    child: Text(
                                                  " Speaks : English , हिंदी",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                ))
                                              ]))
                                        ])
                                  ]),
                              Divider(
                                thickness: 1,
                                color: Colors.blueGrey,
                                endIndent: 20,
                                indent: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 00, 0),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    height: 40,
                                    width: 130,
                                    child: Row(
                                      children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                10, 3, 0, 0),
                                            child: Center(
                                                child: Icon(Icons
                                                    .play_circle_outline))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: GestureDetector(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return yatinknowmore();
                                              }));
                                            },
                                            child: Text(
                                              "Know more",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          5, 0, 00, 0),
                                      decoration: BoxDecoration(
                                        color: Colors.blueGrey,
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      height: 40,
                                      width: 130,
                                      child: Row(children: [
                                        Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                5, 3, 0, 0),
                                            child: Center(
                                                child:
                                                    Icon(Icons.phone_iphone))),
                                        Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              0, 3, 0, 0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute<void>(
                                                      builder: (BuildContext
                                                          context) {
                                                return yatinconsultpage();
                                              }));
                                            },
                                            child: Text(
                                              "Consult Now",
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ),
                                        )
                                      ]))
                                ],
                              ),
                            ])),
                      ],
                    ))
              ]),
              SizedBox(height: 20)
            ],
          )));
  }
}

class rohitknowmore extends StatefulWidget {
  @override
  _rohitknowmoreState createState() => _rohitknowmoreState();
}

class _rohitknowmoreState extends State<rohitknowmore> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350knowmore();
          } else {
            return _build500knowmore();
          }
        },
      ),
    );
  }

  Widget _build350knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/wQ2Kd0s/rohitsir.png"),
        )),
        height: 150,
      ),
      Stack(fit: StackFit.loose, children: [
        Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                color: Colors.brown[200]),
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text("Mr. Rohit Kumar Purohit",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    height: 30,
                    width: 100,
                    child: Text("Teacher")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Jaipur National University , Jaipur (Rajasthan)",
                        style: TextStyle(fontSize: 16))),
              ],
            ))
      ]),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "B.sc , M.sc",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Jaipur National University , Jaipur (Rajasthan)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }

  Widget _build500knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/wQ2Kd0s/rohitsir.png"),
        )),
        height: 150,
      ),
      Stack(
        fit: StackFit.loose,
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                  color: Colors.brown[200]),
              height: 137,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                          child: Text("Mr. Rohit Kumar Purohit",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blueGrey),
                                height: 30,
                                width: 100,
                                child: Center(child: Text("Teacher")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Jaipur National University , Jaipur (Rajasthan)",
                          style: TextStyle(fontSize: 16))),
                ],
              ))
        ],
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "B.sc , M.sc",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Jaipur National University , Jaipur (Rajasthan)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }
}

class aakanshaknowmore extends StatefulWidget {
  @override
  _aakanshaknowmoreState createState() => _aakanshaknowmoreState();
}

class _aakanshaknowmoreState extends State<aakanshaknowmore> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350knowmore();
          } else {
            return _build500knowmore();
          }
        },
      ),
    );
  }

  Widget _build350knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/3RZ3g0Y/aakanshamam.png"),
        )),
        height: 150,
      ),
      Stack(fit: StackFit.loose, children: [
        Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                color: Colors.brown[200]),
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text("Dr. Aakansha",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    height: 30,
                    width: 100,
                    child: Text("Student")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Student In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Sdm College of Ayurveda and Hospital , Hassan (Karnataka)",
                        style: TextStyle(fontSize: 16))),
              ],
            ))
      ]),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "2nd Year PG Scholar",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Sdm College of Ayurveda and Hospital ,\nHassan (Karnataka)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }

  Widget _build500knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/3RZ3g0Y/aakanshamam.png"),
        )),
        height: 150,
      ),
      Stack(
        fit: StackFit.loose,
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                  color: Colors.brown[200]),
              height: 137,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                          child: Text("Dr. Aakansha",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blueGrey),
                                height: 30,
                                width: 100,
                                child: Center(child: Text("Student")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Student In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Sdm College of Ayurveda and Hospital , Hassan (Karnataka)",
                          style: TextStyle(fontSize: 16))),
                ],
              ))
        ],
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "2nd Year PG Scholar",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                              child: Text(
                                "Sdm College of Ayurveda and Hospital , \nHassan (Karnataka)",
                                style: TextStyle(),
                                maxLines: 2,
                              ))),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }
}

class jaiknowmore extends StatefulWidget {
  @override
  _jaiknowmoreState createState() => _jaiknowmoreState();
}

class _jaiknowmoreState extends State<jaiknowmore> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350knowmore();
          } else {
            return _build500knowmore();
          }
        },
      ),
    );
  }

  Widget _build350knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/f0zSr6x/jaistudent.png"),
        )),
        height: 150,
      ),
      Stack(fit: StackFit.loose, children: [
        Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                color: Colors.brown[200]),
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text("Mr. Jai Kumar longani",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    height: 30,
                    width: 100,
                    child: Text("Student")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Student In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Rajmata Vijiya Raje Medical College , bhilwara (Rajasthan)",
                        style: TextStyle(fontSize: 16))),
              ],
            ))
      ]),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "3rd year MBBS",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Rajmata Vijiya Raje Medical College,\nBhilwara (Rajasthan)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }

  Widget _build500knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/f0zSr6x/jaistudent.png"),
        )),
        height: 150,
      ),
      Stack(
        fit: StackFit.loose,
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                  color: Colors.brown[200]),
              height: 137,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                          child: Text("Mr. Jai Kumar longani",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blueGrey),
                                height: 30,
                                width: 100,
                                child: Center(child: Text("Student")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Student In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Rajmata Vijiya Raje Medical College, Bhilwara (Rajasthan)",
                          style: TextStyle(fontSize: 16))),
                ],
              ))
        ],
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "3rd year MBBS",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Rajmata Vijiya Raje Medical College,\nBhilwara (Rajasthan)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }
}

class yatinknowmore extends StatefulWidget {
  @override
  _yatinknowmoreState createState() => _yatinknowmoreState();
}

class _yatinknowmoreState extends State<yatinknowmore> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350knowmore();
          } else {
            return _build500knowmore();
          }
        },
      ),
    );
  }

  Widget _build350knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/Q8hkYPq/yatinstudent.png"),
        )),
        height: 150,
      ),
      Stack(fit: StackFit.loose, children: [
        Container(
            width: double.infinity,
            margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                color: Colors.brown[200]),
            height: 160,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                        padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                        child: Text("Mr. Yatin Golecha",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600))),
                  ],
                ),
                Container(
                    margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey),
                    height: 30,
                    width: 100,
                    child: Text("Student")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Student In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Rajmata Vijiya Raje Medical College ,bhilwara (Rajasthan)",
                        style: TextStyle(fontSize: 16))),
              ],
            ))
      ]),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "3rd year MBBS",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Rajmata Vijiya Raje Medical College,\nBhilwara (Rajasthan)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }

  Widget _build500knowmore() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return SingleChildScrollView(
        child: SafeArea(
            child: Column(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
        width: 250,
        decoration: BoxDecoration(
            image: DecorationImage(
          image: NetworkImage("https://i.ibb.co/Q8hkYPq/yatinstudent.png"),
        )),
        height: 150,
      ),
      Stack(
        fit: StackFit.loose,
        children: [
          Container(
              width: double.infinity,
              margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 7)],
                  color: Colors.brown[200]),
              height: 137,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: const EdgeInsets.fromLTRB(25, 20, 0, 0),
                          child: Text("Mr. Yatin Golecha",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600))),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.blueGrey),
                                height: 30,
                                width: 100,
                                child: Center(child: Text("Student")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Student In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Rajmata Vijiya Raje Medical College, Bhilwara (Rajasthan)",
                          style: TextStyle(fontSize: 16))),
                ],
              ))
        ],
      ),
      Container(
          margin: const EdgeInsets.fromLTRB(15, 30, 0, 0),
          child: Column(
            children: [
              IntrinsicHeight(
                  child: Row(
                children: [
                  Container(
                      child: Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.blueGrey,
                          ),
                          height: 40,
                          width: 40,
                          child: Center(
                            child: Icon(Icons.school),
                          )),
                      Divider(
                        color: Colors.black,
                      ),
                    ],
                  )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                "My Education",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w600),
                              )),
                        ],
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            "3rd year MBBS",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Rajmata Vijiya Raje Medical College,\nBhilwara (Rajasthan)")),
                    ],
                  )
                ],
              ))
            ],
          )),
      Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.blueGrey,
                  ),
                  height: 40,
                  width: 40,
                  child: Center(
                    child: Icon(Icons.translate),
                  )),
              Container(
                padding: const EdgeInsets.fromLTRB(21, 20, 0, 0),
                child: Text(
                  "I can Speak",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              )
            ]),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(75, 0, 0, 0),
              child: Text(
                "Hindi",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
          ])
    ])));
  }
}

class rohitconsultpage extends StatefulWidget {
  @override
  _rohitconsultpageState createState() => _rohitconsultpageState();
}

class _rohitconsultpageState extends State<rohitconsultpage> {
  var _currentStep = 0;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350consultpage();
          } else {
            return _build500consultpage();
          }
        },
      ),
    );
  }

  Widget _build350consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co/wQ2Kd0s/rohitsir.png"),
                )),
                height: 150,
              ),
              Stack(fit: StackFit.loose, children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 7)
                        ],
                        color: Colors.brown[200]),
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 10, 0, 0),
                                child: Text("Mr. Rohit Kumar Purohit",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 30,
                            width: 100,
                            child: Text("Teacher")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Jaipur National University , Jaipur (Rajasthan)",
                                style: TextStyle(fontSize: 16))),
                      ],
                    ))
              ]),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9170149%2045125&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Widget _build500consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: NetworkImage("https://i.ibb.co/wQ2Kd0s/rohitsir.png"),
                )),
                height: 150,
              ),
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 7)
                          ],
                          color: Colors.brown[200]),
                      height: 137,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 20, 0, 0),
                                  child: Text("Mr. Rohit Kumar Purohit",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600))),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blueGrey),
                                        height: 30,
                                        width: 100,
                                        child: Center(child: Text("Teacher")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "Jaipur National University , Jaipur (Rajasthan)",
                                  style: TextStyle(fontSize: 16))),
                        ],
                      ))
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9170149%2045125&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}

class aakanshaconsultpage extends StatefulWidget {
  @override
  _aakanshaconsultpageState createState() => _aakanshaconsultpageState();
}

class _aakanshaconsultpageState extends State<aakanshaconsultpage> {
  var _currentStep = 0;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350consultpage();
          } else {
            return _build500consultpage();
          }
        },
      ),
    );
  }

  Widget _build350consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image:
                      NetworkImage("https://i.ibb.co/3RZ3g0Y/aakanshamam.png"),
                )),
                height: 150,
              ),
              Stack(fit: StackFit.loose, children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 7)
                        ],
                        color: Colors.brown[200]),
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 10, 0, 0),
                                child: Text("Dr. Aakansha",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 30,
                            width: 100,
                            child: Text("Student")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Student In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Sdm College of Ayurveda and Hospital , Hassan (Karnataka)",
                                style: TextStyle(fontSize: 16))),
                      ],
                    ))
              ]),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9196088%2023239&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Widget _build500consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image:
                      NetworkImage("https://i.ibb.co/3RZ3g0Y/aakanshamam.png"),
                )),
                height: 150,
              ),
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 7)
                          ],
                          color: Colors.brown[200]),
                      height: 137,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 20, 0, 0),
                                  child: Text("Dr. Aakansha",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600))),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blueGrey),
                                        height: 30,
                                        width: 100,
                                        child: Center(child: Text("Student")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Student In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: AutoSizeText(
                                "Sdm College of Ayurveda and Hospital , Hassan (Karnataka)",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 12,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ))
                        ],
                      ))
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9196088%2023239&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}

class jaiconsultpage extends StatefulWidget {
  @override
  _jaiconsultpageState createState() => _jaiconsultpageState();
}

class _jaiconsultpageState extends State<jaiconsultpage> {
  var _currentStep = 0;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350consultpage();
          } else {
            return _build500consultpage();
          }
        },
      ),
    );
  }

  Widget _build350consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image:
                      NetworkImage("https://i.ibb.co/f0zSr6x/jaistudent.png"),
                )),
                height: 150,
              ),
              Stack(fit: StackFit.loose, children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 7)
                        ],
                        color: Colors.brown[200]),
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 10, 0, 0),
                                child: Text("Mr. Jai Kumar longani",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 30,
                            width: 100,
                            child: Text("Student")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Student In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Rajmata Vijiya Raje Medical College, Bhilwara (Rajasthan)",
                                style: TextStyle(fontSize: 16))),
                      ],
                    ))
              ]),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9196642%2021508&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Widget _build500consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image:
                      NetworkImage("https://i.ibb.co/f0zSr6x/jaistudent.png"),
                )),
                height: 150,
              ),
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 7)
                          ],
                          color: Colors.brown[200]),
                      height: 137,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 20, 0, 0),
                                  child: Text("Mr. Jai Kumar Longani",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600))),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blueGrey),
                                        height: 30,
                                        width: 100,
                                        child: Center(child: Text("Student")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Student In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: AutoSizeText(
                                "Rajmata Vijiya Raje Medical College, Bhilwara (Rajasthan)",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 12,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ))
                        ],
                      ))
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9196642%2021508&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}

class yatinconsultpage extends StatefulWidget {
  @override
  _yatinconsultpageState createState() => _yatinconsultpageState();
}

class _yatinconsultpageState extends State<yatinconsultpage> {
  var _currentStep = 0;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 1), () {
      setState(() {
        _loading = false;
      });
    });
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      backgroundColor: Color.fromRGBO(244, 243, 243, 1),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.blueGrey,
        brightness: Brightness.light,
        actions: [
          Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              )),
        ],
        elevation: 0,
        title: Center(
            child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 380) {
            return _build350consultpage();
          } else {
            return _build500consultpage();
          }
        },
      ),
    );
  }

  Widget _build350consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image:
                      NetworkImage("https://i.ibb.co/Q8hkYPq/yatinstudent.png"),
                )),
                height: 150,
              ),
              Stack(fit: StackFit.loose, children: [
                Container(
                    width: double.infinity,
                    margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(color: Colors.grey, blurRadius: 7)
                        ],
                        color: Colors.brown[200]),
                    height: 160,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                                padding:
                                    const EdgeInsets.fromLTRB(25, 10, 0, 0),
                                child: Text("Mr. Yatin Golecha",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600))),
                          ],
                        ),
                        Container(
                            margin: const EdgeInsets.fromLTRB(22, 3, 0, 0),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blueGrey),
                            height: 30,
                            width: 100,
                            child: Text("Student")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Student In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Rajmata Vijiya Raje Medical College, Bhilwara (Rajasthan)",
                                style: TextStyle(fontSize: 16))),
                      ],
                    ))
              ]),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9196807%2028233&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Widget _build500consultpage() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return _loading
        ? spinkit
        : SingleChildScrollView(
            child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image:
                      NetworkImage("https://i.ibb.co/Q8hkYPq/yatinstudent.png"),
                )),
                height: 150,
              ),
              Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                      width: double.infinity,
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey, blurRadius: 7)
                          ],
                          color: Colors.brown[200]),
                      height: 137,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 20, 0, 0),
                                  child: Text("Mr. Yatin Golecha",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w600))),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            20, 20, 0, 0),
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Colors.blueGrey),
                                        height: 30,
                                        width: 100,
                                        child: Center(child: Text("Student")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Student In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: AutoSizeText(
                                "Rajmata Vijiya Raje Medical College, Bhilwara (Rajasthan)",
                                style: TextStyle(fontSize: 16),
                                minFontSize: 12,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ))
                        ],
                      ))
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.blueGrey,
                                  ),
                                  height: 40,
                                  width: 40,
                                  child: Center(
                                    child: Icon(Icons.phone_iphone),
                                  ),
                                ),
                              ],
                            )),
                          ]),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Wrap(alignment: WrapAlignment.end, children: [
                                    Container(
                                        margin: const EdgeInsets.fromLTRB(
                                            5, 10, 0, 0),
                                        child: AutoSizeText(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                          maxFontSize: 20,
                                          minFontSize: 15,
                                          maxLines: 2,
                                        )),
                                  ]),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                margin: const EdgeInsets.fromLTRB(45, 0, 0, 00),
                                child: Linkify(
                                  onOpen: _onOpen,
                                  text:
                                      "https://api.whatsapp.com/send/?phone=9196807%2028233&text=Hello%2C&app_absent=0",
                                ))
                          ])
                    ],
                  )),
            ]),
          ));
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}

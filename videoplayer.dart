import 'package:auto_size_text/auto_size_text.dart';
import 'package:chewie/chewie.dart';
import 'package:chewie/src/chewie_player.dart';
import 'translatepage.dart';
import 'yoga..dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:video_player/video_player.dart';

import 'consultnow.dart';

void main() {
  runApp(
    ChewieDemo(),
  );
}

class ChewieDemo extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _ChewieDemoState();
  }
}

class _ChewieDemoState extends State<ChewieDemo> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614684392/as1_cwtwin.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return translate1();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Halasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Stretch to the back and neck, so nerves get rejuvenation",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Effective for thyroid and adrenal glands",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Improves the operation of sympathetic nerves system",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Increase blood circulation",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Useful for asthma, bronchitis",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Halasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. High Blood Pressure",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Slipped Disc",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Do not do during Menstruation",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Hernia",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. Pregnant women",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Keep the legs straight in knees with toes vertical on the ground over your head. Legs are in one straight line. As far as possible, the back remains straight and vertical. Arms straight with palms on the ground. Shoulders resting on the ground. The chin resting against the chest.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Bend the knees. Move the neck or overstrain it in chin lock position. Move into this asana fast as a lot of stress is put onto the spine.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class consultyoga extends StatefulWidget {
  @override
  _consultyogaState createState() => _consultyogaState();
}

class _consultyogaState extends State<consultyoga> {
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
    return Scaffold(
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
    );
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
                              hintText: "Search Yoga Teachers",
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
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    children: [
                      Flexible(
                          child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text("Yoga Teacher Available Right Now",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w600)),
                      ))
                    ],
                  ),
                ),
                SizedBox(height: 10),
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
                                              "https://i.ibb.co/G2YkMZV/gopalsir.png",
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
                                                      "Yog Data",
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
                                                  ("Mr. Gopal Singh Rajpoot"),
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
                                                  "7 Yr. exp",
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
                                                  "P.G in Yoga",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Yoga Teacher",
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
                                                    " Speaks : हिंदी",
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
                                                  return gopalknowmore();
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
                                                  return gopalconsultpage();
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
                                              "https://i.ibb.co/gykF5V4/savitamam.png",
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
                                                      "LivYog",
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
                                                  ("Mrs. Savita Pareek"),
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
                                                  "10 Yr. exp",
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
                                                  "MA in Yogic Science",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Yoga Teacher",
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
                                                    " Speaks : हिंदी",
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
                                                  return savitaknowmore();
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
                                                  return savitaconsultpage();
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
                                              "https://i.ibb.co/RQ60wD8/sunandamam.png",
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
                                                      "Patanjali Yoga Committee",
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
                                                  ("Mrs. Sunanda Patil"),
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
                                                  "12 Yr. exp",
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
                                                  "Bsc Hons.",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Yoga Teacher",
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
                                                    " Speaks : हिंदी",
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
                                                  return sunandaknowmore();
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
                                                  return sunandaconsultpage();
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
                                              "https://i.ibb.co/JvRtZsH/rajkanwarmam.png",
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
                                                      "Yog Data",
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
                                              child: Text(("Miss. Raj Kanwar"),
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
                                                  "5 Yr. exp",
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
                                                  "DYAS",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Yoga Teacher",
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
                                                    " Speaks : हिंदी",
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
                                                  return rajkanwarknowmore();
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
                                                  return rajkanwarconsultpage();
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
                                              "https://i.ibb.co/2t0sBp8/yashaswisir.png",
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
                                                      "Goswami Yashaswi",
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
                                                  ("Mr. Yashaswi Goswami"),
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
                                                  "12 Yr. exp",
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
                                                  "Masters in Yoga",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Yoga Teacher",
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
                                                  return yashaswiknowmore();
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
                                                  return yashaswiconsultpage();
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
                                              "https://i.ibb.co/YZmmLJ8/ravisir.png",
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
                                                      "Yog Data",
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
                                              child: Text(("Mr. Ravi Meena"),
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
                                                  "3 Yr. exp",
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
                                                  "Certificate in Yoga",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600),
                                                )),
                                            Container(
                                                margin:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 5, 0, 0),
                                                child: Text(
                                                  "Yoga Teacher",
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
                                                  return raviknowmore();
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
                                                  return raviconsultpage();
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
                                hintText: "Search Yoga Teachers",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                      ])),
              SizedBox(height: 10),
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Container(
                    margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                    child: Text("Yoga Teachers Available Right Now",
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
                                            "https://i.ibb.co/G2YkMZV/gopalsir.png",
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
                                                    "Yog Data",
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
                                                ("Mr. Gopal Singh Rajpoot"),
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
                                                "7 Yr. exp",
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
                                                "P.G in Yoga",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Yoga Teacher",
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
                                                  " Speaks : हिंदी",
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
                                                return gopalknowmore();
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
                                                return gopalconsultpage();
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
                                            "https://i.ibb.co/gykF5V4/savitamam.png",
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
                                                    "LivYog",
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
                                            child: Text(("Mrs. Savita Pareek"),
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
                                                "10 Yr. exp",
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
                                                "MA in Yogic Science",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Yoga Teacher",
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
                                                  " Speaks : हिंदी",
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
                                                return savitaknowmore();
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
                                                return savitaconsultpage();
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
                                            "https://i.ibb.co/RQ60wD8/sunandamam.png",
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
                                                    "Patanjali Yoga Committee",
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
                                            child: Text(("Mrs. Sunanda Patil"),
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
                                                "12 Yr. exp",
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
                                                "Bsc Hons.",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Yoga Teacher",
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
                                                  " Speaks : हिंदी",
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
                                                return sunandaknowmore();
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
                                                return sunandaconsultpage();
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
                                            "https://i.ibb.co/JvRtZsH/rajkanwarmam.png",
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
                                                    "Yog Data",
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
                                            child: Text(("Miss. Raj Kanwar"),
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
                                                "5 Yr. exp",
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
                                                "DYAS",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Yoga Teacher",
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
                                                  " Speaks : हिंदी",
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
                                                return rajkanwarknowmore();
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
                                                return rajkanwarconsultpage();
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
                                            "https://i.ibb.co/2t0sBp8/yashaswisir.png",
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
                                                    "Goswami Yashaswi",
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
                                                ("Mr. Yashaswi Goswami"),
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
                                                "12 Yr. exp",
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
                                                "Masters in Yoga",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Yoga Teacher",
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
                                                return yashaswiknowmore();
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
                                                return yashaswiconsultpage();
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
                                            "https://i.ibb.co/YZmmLJ8/ravisir.png",
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
                                                    "Yog Data",
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
                                            child: Text(("Mr. Ravi Meena"),
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
                                                "3 Yr. exp",
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
                                                "Certificate in Yoga",
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.w600),
                                              )),
                                          Container(
                                              margin: const EdgeInsets.fromLTRB(
                                                  10, 5, 0, 0),
                                              child: Text(
                                                "Yoga Teacher",
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
                                                return raviknowmore();
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
                                                return raviconsultpage();
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

class hanumanasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const hanumanasana({this.title = 'FreeDr.Services'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _hanumanasanaState();
  }
}

class _hanumanasanaState extends State<hanumanasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614974951/y2mate.com_-_Hanuman_asana_practice_easilymonkey_posesplit_pose%E0%A4%B9%E0%A4%A8%E0%A4%AE%E0%A4%A8_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%95_%E0%A4%B2%E0%A4%8F_%E0%A4%95%E0%A4%B8_%E0%A4%85%E0%A4%AD%E0%A4%AF%E0%A4%B8_%E0%A4%95%E0%A4%B0beginner_1080p_izn6lf.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return hanumanasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Hanumanasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Hanumanasana helps to stretches the thighs, hamstrings and groins.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. It helps to stimulate the abdominal organs.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Hanumanasana is the excellent test of leg flexibility at the hips.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. The asana is very useful in treating or preventing of sexual problems.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. It enhances the flexibility of the hips muscles.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Hanumanasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. High Blood Pressure",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Slipped Disc",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Do not do during Menstruation",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Hernia",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. Pregnant women",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Keep the legs straight in knees with toes vertical on the ground over your head. Legs are in one straight line. As far as possible, the back remains straight and vertical. Arms straight with palms on the ground. Shoulders resting on the ground. The chin resting against the chest.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Bend the knees. Move the neck or overstrain it in chin lock position. Move into this asana fast as a lot of stress is put onto the spine.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class svastikasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _svastikasanaState();
  }
}

class _svastikasanaState extends State<svastikasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614974870/%E0%A4%B8%E0%A5%8D%E0%A4%B5%E0%A4%B8%E0%A5%8D%E0%A4%A4%E0%A4%BF%E0%A4%95%E0%A4%BE%E0%A4%B8%E0%A4%A8_Svastikasana_Hindi_rwmvzr.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return svasstikasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Swastikasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Stretches the lower body: The hamstrings and glutes are stretches. This is a great stretch for runners.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Spinal alignment: The spine is stretched which strengthens the back.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Optimal organ functioning: As the torso is stretched, all the organs have optimal place to function efficiently.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Stimulates calmness: As our eyes are focused on the Trikuti (third eyes), calmness and clarity is induced.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Meditation pose: Swatikasana is a good meditation pose. Especially for people who find it difficult to sit in, more classical poses like Padmasana and Siddhasana.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Svastikasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Injury",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Arthritis",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Sciatica",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Pregnant women",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "First of all, spread your legs forward and sit on the ground. Now you rest the left foot on the inner right thigh and the right foot on the inner left thigh. Keep the spine straight. If you sit in Gyanmudra, it is even better. Keep in mind that your knees touch the ground. Your entire body, waist and back should be in a straight line.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "A person suffering from sciatica should not practice this asana. Do not practice this asana if you have problems related to the spine. This posture should not be done for those who have pain in their knees.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class sarvangasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _sarvangasanaState();
  }
}

class _sarvangasanaState extends State<sarvangasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016608/Yoga_for_Hair_Fall_-_Grey_Hair_Sarvangasana___%E0%A4%B8%E0%A5%9E%E0%A5%87%E0%A4%A6_%E0%A4%AC%E0%A4%BE%E0%A4%B2_-_%E0%A4%9D%E0%A5%9C%E0%A4%A4%E0%A5%87_%E0%A4%AC%E0%A4%BE%E0%A4%B2%E0%A5%8B%E0%A4%82_%E0%A4%95%E0%A4%BE_%E0%A4%87%E0%A4%B2%E0%A4%BE%E0%A4%9C_%E0%A4%B8%E0%A4%B0%E0%A5%8D%E0%A4%B5%E0%A4%BE%E0%A4%82%E0%A4%97%E0%A4%BE%E0%A4%B8%E0%A4%A8___Jeevan_Kosh_qvn7lt.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return sarvangasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Sarvangasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. The thymus gland is stimulated which boosts the immune system.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Normalizes body weight due to its effect on the thyroid.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. The nerves passing through the neck are toned and the neck flexibility is increased.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Prevents and cures varicose veins.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. It balances the parathyroid glands which ensures regeneration and normal development of the bones.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Sarvangasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Diarrhea",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Headache",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. High blood pressure",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Neck injury",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. Menstruation",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Keep the legs straight in knees with toes pointing to the sky. Try and keep the body in a straight line from the chest to the tips of the toes. Head straight and eye sight fixed on the toes. Make sure that the trunk is raised enough vertically so that the chin can comfortably rest against the chest.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Bend the knees. Move the neck or overstrain it in the chin lock position. Bring the legs over the head when in the asana position but don’t keep them completely vertical if it causes tension. Raise the head from the floor. Tense the legs or point the feet as this contracts the legs and prevents drainage of blood.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class suryanamaskar extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _suryanamaskarState();
  }
}

class _suryanamaskarState extends State<suryanamaskar> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016450/Learn_Step_by_Step_Surya_Namaskar_w627ez.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return suryanamaskar_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Surya Namaskar",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Helps lose weight",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Glowing skin",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Better digestive system",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Ensures regular menstrual cycle",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Brings down blood sugar level",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Surya Namaskar",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. General body weakness",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Injury at the shoulder",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Pregnant Women should most certainly avoid the practice of Surya Namaskar",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Injury at the wrists or legs",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Do maintain correct body postures. Do have proper and rhythmic breathing. Do follow the steps in order. Do increase the number of repetitions gradually. Do follow a healthy diet  – possibly a vegetarian diet. Do train yourself on a daily basis. Do keep awareness while doing each pose. Do wear comfortable clothing. Do ensure you’re hydrated. Do start these exercises at a slow pace",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Don’t begin in a random order . Don’t be in a hurry about the number of repetitions you can do.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class suptapadangusthasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _suptapadangusthasanaState();
  }
}

class _suptapadangusthasanaState extends State<suptapadangusthasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016602/Supta_Padangusthasana__Yoga_for_Arthritis_%E0%A4%97%E0%A4%A0%E0%A4%BF%E0%A4%AF%E0%A4%BE_%E0%A4%95%E0%A4%AE%E0%A4%B0_%E0%A4%A6%E0%A4%B0%E0%A5%8D%E0%A4%A6_%E0%A4%95%E0%A5%87_%E0%A4%B2%E0%A4%BF%E0%A4%8F_%E0%A4%B8%E0%A5%81%E0%A4%AA%E0%A5%8D%E0%A4%A4_%E0%A4%AA%E0%A4%A6%E0%A4%82%E0%A4%97%E0%A5%81%E0%A4%B8%E0%A5%8D%E0%A4%A5%E0%A4%BE%E0%A4%B8%E0%A4%A8___Jeevan_Kosh_psisk4.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return suptapadangusthasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Supta Padangusthasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Therapeutic for blood pressure, infertility and constipation",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Great for athletes",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Can help in Sciatic Pain",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Strengthening of the Reproductive System",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Core muscles become strong",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Supta Padangusthasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Weak legs and hips",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Injury at the shoulder",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Avoid if injury at the hamstrings or quadriceps",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Lie on the yoga mat in Shavasana. Gently stretch legs and toes. Press the feet through the ankles. While exhaling, bring the right knee to the chest. Place a strap on the empty space on the right floor. If possible, hold the toe with two fingers. Now try to straighten the right leg towards the ceiling. The hands will be straight and the shoulders will pressure the floor. Stretch the left leg and spread it forward. Can press the upper part of the left thigh with the left hand. Do not put too much pressure on the hind leg by stretching the right leg. To make the posture harder, you can also tilt or bend the leg to the right. On turning the leg, an angle of 90 degrees will be made with the left leg. The left buttock should remain completely in contact with the ground during this time. After 30 seconds loosen the strap and bring the foot to the ground. ",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Gradually increase the practice to perform sleepy padangushthasana. Do not practice this asana in case of discomfort. Never put pressure on the shoulders or knees. Warm up before the posture so that the core muscles become active. Stop practicing asana if you feel any discomfort or pain. If you are doing these asanas for the first time then do it under the supervision of a yoga guru.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class simhasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _simhasanaState();
  }
}

class _simhasanaState extends State<simhasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016363/y2mate.com_-_Simhasana_Yoga_Pose_360p_snyy6x.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return simhasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Simhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Relieves tension in the face and chest",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Improves circulation of blood to the face",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Keeps your eyes healthy by stimulating the nerves",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Stimulates and firms the platysma",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Helps prevent sore throat, asthma, and other respiratory ailments",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Simhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Helps prevent sore throat, asthma, and other respiratory ailments",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Do not practice this asana, if you suffer from any chronic illnesses or physical problems",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Do not practice this asana, if you suffer from any chronic illnesses or physical problems",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Keep the back straight. Keep the chest open. You may shift the position of the legs slightly to make sure that you are firmly seated and in balance.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Bend the arms.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class siddhasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _siddhasanaState();
  }
}

class _siddhasanaState extends State<siddhasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016421/%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BE%E0%A4%B8%E0%A4%A8_Siddhasana_Hindi_ml7r7t.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return siddhasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Siddhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. This asana stretches the hips, knees and ankles",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Siddhasana helps to balance the activities of the reproductive organs",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. It helps to stabilize the sexual energy which is beneficial for deep meditation",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. This asana helps in concentration and clarity of mind",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. It improves memory, digestion and the faculty of the mind",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Siddhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. If you have a knees injury then you should avoid to do this Siddhasana",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you have recently had a hip surgery then you avoid this Asana",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. If you have any medical concerns then before to do this asana you should talk with your doctor",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "First of all sit in Dandasana. By bending the left foot, press his heel between the anus and the subconscious in such a way that the soles of the left foot touch the thigh of the right foot. Similarly, bend the right foot and press his heel above the subconscious (shishan) in this way. Now keep both hands in the knowledge posture and tie Jalandhar and make your vision focal. This is the name of Siddhasana.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Householders should not practice this asana for a long time. Siddhasana should not be done by force. Sciatica, even individuals with slip discs should not practice it. If you have knee pain, joint pain or complain of back pain, they should also not practice it. Even patients suffering from anal diseases like piles etc. should not practice it.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class samakonasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _samakonasanaState();
  }
}

class _samakonasanaState extends State<samakonasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615302312/Samakonasana_ldkd5c.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return samakonasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Samakonasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Inner thigh muscles or hamstring are stimulated through this pose, which helps in toning your inner thigh as well",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Blood circulation is increased in your lower belly is improved",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Very useful pose in the strengthening of your hip joints, lower back joints, etc",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. This pose helps relief from stress and provides good mental health",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. It helps to give a nice boost of hormones to the body",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Samakonasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. This asana should be practiced with an empty stomach or 5-6 hours after you have taken your meal",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. People with severe back pain or injury should avoid this asana",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. People with leg problems should practice this asana under professional guidance",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "First, start by sitting on the ground or yoga mat and stretch the legs to your front. Maintain this position for few seconds while you’re breathing. Secondly, stretch the legs sideways very slowly so that both the legs form a straight line. The body should be kept straight. Remain in this manner for a minute or less and then bring both the legs back to the normal position.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "In case of any severe injury or surgery, you should let your instructor know about the problem and should practice this asana only under professional guidance. People having a slip disc problem should avoid this posture. Pregnant women should particularly avoid this posture.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class shirshasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _shirshasanaState();
  }
}

class _shirshasanaState extends State<shirshasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016316/How_to_do_HEADSTAND_for_Beginners___Benefits_of_Headstand_Yoga_pose_Sirsasana___Hindi_fxtufa.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return shirshasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Shirshasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Calms the brain and helps relieve stress and mild depression",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Stimulates the pituitary and pineal glands",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Strengthens the arms, legs, and spine",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Strengthens the lungs",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Improves digestion",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Shirshasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Keep the whole body vertical in the final pose; don’t incline backward, forwards, or sideways",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. One should practice this yoga pose just after doing other asanas",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Practice it before Pranayama and meditative yoga pose",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "To perform the headstand, first of all, spread the mat and get into the state of Vajrasana. Then, interlocking the fingers of both hands, bend forward and place the hands on the ground. Now keep the head in the middle of the hands and keep it close to the ground. Then raise the legs slowly and straighten. In this case, the head should be completely straight. Remain in this posture for a few seconds and keep breathing at normal speed. Then, while exhaling, lower the legs and slowly return to normal. Initially, do this asana for two to three times.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "The hips go beyond the shoulders. Placing your elbows too far away from each other. Placing the head in a wrong position – either too far towards the forehead or too far towards the back of the head. Practicing the pose on too hard of a surface. Breathing too quickly or too shallow.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class setusarvangasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _setusarvangasanaState();
  }
}

class _setusarvangasanaState extends State<setusarvangasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016102/Yoga__Setu_Bandhasana__%E0%A4%AA%E0%A5%87%E0%A4%9F_%E0%A4%95%E0%A5%80_%E0%A4%9A%E0%A4%B0%E0%A5%8D%E0%A4%AC%E0%A5%80_%E0%A4%95%E0%A4%BE%E0%A4%9F_%E0%A4%A6%E0%A5%87%E0%A4%97%E0%A4%BE_%E0%A4%B8%E0%A5%87%E0%A4%A4%E0%A5%81%E0%A4%AC%E0%A4%82%E0%A4%A7_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%AF%E0%A4%BE%E0%A4%A8%E0%A4%BF_%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%BF%E0%A4%9C_%E0%A4%AA%E0%A5%8B%E0%A5%9B___Bridge_Pose___Jeevan_Kosh_frtzqp.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return setusarvangasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Setu Bandha Sarvangasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Stretches the chest, neck, and spine",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Calms the brain and helps alleviate stress and mild depression",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Stimulates abdominal organs, lungs, and thyroid",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Rejuvenates tired legs",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Helps relieve the symptoms of menopause",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Setu Bandha Sarvangasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. One shouldn’t perform this pose if suffering from neck pain",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. In back injury, it should be avoided",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Skip the yoga pose if one having knee pain",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Lie on your back on the yoga mat. Keep the breath speed normal. After this, keep the hands in the side. Now slowly bend your legs from the knees and bring them near the hips. Lift the hips up from the floor as much as possible. The hands will remain on the ground. Hold the breath for a while. After this, return to the ground exhaling. Straighten the legs and relax. Start again after resting for 10-15 seconds. ",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "People with neck injury, disc problem should do it under proper supervision",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class shalabhasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _shalabhasanaState();
  }
}

class _shalabhasanaState extends State<shalabhasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016108/y2mate.com_-_Yoga_with_Modi_Shalabhasana_Hindi_1080p_xms7fv.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return shalabhasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Shalabhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Helpful in sciatica and back ache",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Helps in getting rid of unnecessary fat around abs, hips, waist and thighs",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Strengthens and adds flexibility to back muscles and spine",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Curing cervical spondylitis and spinal cord ailments",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Develops self-confidence",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Shalabhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. People with severe back problems should practice the pose slowly",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Do NOT practice this pose if you have an advanced arthritis of the hips or a back pain",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Pregnant women should completely avoid this pose",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Keep both the legs straight and together at the knees. Chin on the ground. Palms pressing on the ground. Toes pointing backwards.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Bend the knees. Keep distance between the legs. Touch the forehead on the ground.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class sukhasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _sukhasanaState();
  }
}

class _sukhasanaState extends State<sukhasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615015913/Calm_Down_In_3_Minutes_With_Sukhasana___Easiest_Yoga_Pose___Fit_Tak_naqfpy.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return sukhasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Sukhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Builds physical and mental balance",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Helpful in reducing stress and anxiety",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Excellent for people having a stiff body",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Improves concentration for achieving an effective meditation practice",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Creates flexibility in ankle, knee and hip joints",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Sukhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. It shouldn’t be practice in case of a knee injury",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Avoid in case of sciatica",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. It also shouldn’t be practiced in sacral ailments",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Sit with the legs facing forwards in front of the body. Fold the left leg under the right thigh. Then place the right foot under the left thigh. Hold your head, neck, and spine upright in a comfortable position. Place your hands either on your knees or in your lap. Close your eyes. Relax your whole body.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Keep in mind that even if your hips are swollen or someone's hips are hurt, do not do this asana. This posture should not be done even if someone has a problem with slip disk. If any pregnant women want to do this asana, they should first consult their doctor or experts. If the doctor advises to do the asana, then this asana should be done. If you have trouble sitting on the ground, you can put a cushion or pillow to sit on. And sit with the support of the wall.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class tadasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _tadasanaState();
  }
}

class _tadasanaState extends State<tadasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977444/PM_Modi_shares_animated_video_of_Tadasana_promotes_yoga_kqaspn.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return tadasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Tadasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1.  It helps in increasing the flexibility of your ankles, thighs and joints",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. It can tone your hips and abdomen and helps to gain control over your muscular movements",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. It is also believed that it may help in increasing your height if practised regularly during formative years",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Tadasana strengthens your nervous system and regulates your respiratory and digestive functions",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. The biggest benefit of tadasana is that it helps in correcting your posture and improves your balance by making your spine more agile",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Tadasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Do not practice it if you suffer from Insomnia",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. People with headache problems should not practice mountain pose",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Don't do it if your blood pressure is low",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "For this, first you stand up and keep your waist and neck straight. Now put your hand over the head and while breathing, slowly pull the entire body. Feel the stretch from toe to toe. Keep this state for some time and breathe out. Then while exhaling, slowly bring your hands and body to the first position. In this way a cycle was completed. Practice it at least three to four times.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "If you take any blood thinning medications or have low blood pressure, avoid doing this pose without consulting a doctor.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class tittibhasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _tittibhasanaState();
  }
}

class _tittibhasanaState extends State<tittibhasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615298564/y2mate.com_-_%E0%A4%9F%E0%A4%9F%E0%A4%9F%E0%A4%AD%E0%A4%B8%E0%A4%A8Tittibhasana%E0%A4%95%E0%A4%B0%E0%A4%A8_%E0%A4%95_5_%E0%A4%A4%E0%A4%B0%E0%A4%95_titibasana_in_hindititibasana_for_beginnerstitibasana_yoga_480p_zxeqnu.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return tittibhasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Tittibhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Tittibhasana (Firefly Pose) Makes your wrist stronger along with improves the strength of the arms",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. It tightens and tones the area of the belly",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Stretches your back torso, inner groins, and hamstrings",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. The Yoga pose also helps in bringing an overall sense of balance and improves core strength.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Firefly Pose gives the back torso and inner groins a good stretch",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Tittibhasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Don’t carry out it whereas recovering from surgical procedure.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Pregnant ladies mustn’t apply this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Folks with low blood strain ought to keep away from this pose",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "You can approximate this pose by sitting on the floor, legs spread to a ninety-degree angle, elevating each heel on a block, and pressing your palms into the floor between your legs.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Avoid this pose if you have a shoulder, elbow, wrist, or low back injury. It is an advanced pose, so be sure to get proper instruction and advice on what preparatory poses will be useful. Practice it only where it will be safe if you fall out of the pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class trikonasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _trikonasanaState();
  }
}

class _trikonasanaState extends State<trikonasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977568/y2mate.com_-_Trikonasana_Yoga_for_good_Metabolism_Digestion_%E0%A4%A4%E0%A4%B0%E0%A4%95%E0%A4%A3%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8_%E0%A4%95_%E0%A4%A4%E0%A4%B0%E0%A4%95_%E0%A4%94%E0%A4%B0_%E0%A4%AB%E0%A4%AF%E0%A4%A6_Jeevan_Kosh_480p_m4j35y.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return trikonasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Trikonasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Stretches and strengthens the thighs, knees, and ankles",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Stretches the hips, groins, hamstrings, and calves; shoulders, chest, and spine",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Stimulates the abdominal organs",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Helps relieve stress.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Improves digestion.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Trikonasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Don't overstretch the body while practicing this asana as it may cause unnecessary pain or injury",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If the neck begins to hurt in the upward direction, slightly lower it",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. Avoid practicing this asana in case of severe pain in the neck, back or shoulders",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Stand straight with your legs apart. Inhale. ...Exhale. ...Simultaneously, slide your left arm down along your left leg till your fingers are at your ankle.At this point, your right arm must be horizontal as your head is tilted left.Hold the pose with your knees and elbows straight. ...Inhale.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "People with slip discs or back pain should avoid doing this asana.People with any surgery should consult a physician before doing this asana.Pregnant ladies should consult a physician before doing this asana.Women  during menstruation should avoid doing this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class trivikramasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _trivikramasanaState();
  }
}

class _trivikramasanaState extends State<trivikramasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615103798/standing_split_%E0%A4%9C%E0%A4%B2%E0%A5%8D%E0%A4%A6%E0%A5%80_%E0%A4%B8%E0%A5%80%E0%A4%96%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%A8%E0%A4%AF%E0%A4%BE_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BE___standing_split_kaise_sikhe___baaghi_split_kaise_kare_zf7ezj.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return trivikramasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Trivikramasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Fortifies the legs, knees, lower legs, arms, and chest.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Stretches and opens the hips, crotches, hamstrings, calves, shoulders, chest and spine.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Increments mental and physical balance.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Improves assimilation.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Diminishes nervousness, worry, back torment, and sciatica.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Trivikramasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. It is also important to make sure that you have defecated before doing the posture and the stomach is completely empty.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you have pain in your feet and knees, do not do this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. If you suffer from any type of back or spinal problem, do not do this asana.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "First, you have to sit in dandasana on a yoga tangle to come to supine splits pose. After this inhale and raise your leg to 90 degrees make sure it is your left leg. Hold your toe with your right hand and at the same time push your left thigh towards the ground.Then push your left leg ahead and your left shoulder forward. Now turn the left hip outward carefully. Press your feet slowly with both of your hands. At the initial level do it for like   2-4 breaths. Lie down on your back and keep your legs and shoulders extending.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "This posture should not be attempted by people with sciatica, hip problems or hernia. To prevent strained muscles and torn ligaments, this asana should not be attempted unless the body is very flexible.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class tulasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _tulasanaState();
  }
}

class _tulasanaState extends State<tulasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977567/How_To_Do_Tolasana_Scale_pose___LIFTED_LOTUSE_POSE___kautilya_Verma___Utthita_padmasana_q5wty3.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return tulasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Tulasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Tulasana strengthens your arms, wrists and upper body region.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Makes your shoulders strong.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. It relaxes the muscles and calms the mind.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Increases the sense of balance.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Includes tightening of the abs and subsequently, brings about a rigid stomach.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Tulasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Don't perform this asana if you have an injury it your arms or wrists.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you suffer from stiff knee and ankle joints, stay away from this pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                            child: Text(
                              "3. People who suffer from tight muscles in thighs and buttocks may find it very difficult to perform this pose.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Sit on the floor with your legs positioned in Padmasana posturePress your hands against the floor tightlySlowly activate your arms and lift your bodyBalance the weight of your body on your armsYour gaze should be fixed on the object infront of youHold for 3 breaths and slowly get back to original position",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Those who are having health conditions like frozen shoulder, rotator cuff injury or ailments, shoulder bursitis, Osteoarthritis, dislocated shoulder, fractured collarbone or pain in arm and shoulder region, should avoid Scale Pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class upavishta_konasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _upavishta_konasanaState();
  }
}

class _upavishta_konasanaState extends State<upavishta_konasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977506/y2mate.com_-_Upavishtha_Konasana_Yoga_Kidneys_%E0%A4%95_DETOX_%E0%A4%95%E0%A4%B0%E0%A4%A4_%E0%A4%B9_%E0%A4%89%E0%A4%AA%E0%A4%B5%E0%A4%B7%E0%A4%A0_%E0%A4%95%E0%A4%A3%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8_%E0%A4%95_%E0%A4%A4%E0%A4%B0%E0%A4%95_%E0%A4%B5_%E0%A4%AB%E0%A4%AF%E0%A4%A6_Jeevan_Kosh_480p_ks2xbf.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return upavishta_konasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Upavishta Konasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Stretches the insides and backs of the legs.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Stimulates the abdominal organs.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Strengthens the spine.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Calms the brain.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Releases groins.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Upavishta Konasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Avoid doing this asana if you have a pull or tear in your groin or hamstring, or if you are pregnant, have an injury in the lower back, or a herniated disk.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you have pain in your lower back, sit on a blanket or a block while you do this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Upavistha Konasana is a difficult forward bend for many beginners. If you have trouble bending even a little bit forward, its acceptable to bend your knees slightly. You might even support your knees on thinly rolled blankets; but remember, as you move into the forward bend, its still important keep the knee caps pointing toward the ceiling.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Practice it on empty stomach. Eat at least before 4 or 6 hours of practicing. Avoid practicing it if you have a tear or pull in your hamstring. If you have a lower back injury then sit on a thick or folded blanket.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class chakrasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _chakrasanaState();
  }
}

class _chakrasanaState extends State<chakrasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977432/Chakrasana_for_Inner_Strength__%E0%A4%85%E0%A4%82%E0%A4%A6%E0%A4%B0%E0%A5%82%E0%A4%A8%E0%A5%80_%E0%A4%A4%E0%A4%BE%E0%A4%95%E0%A4%A4_%E0%A4%95%E0%A5%87_%E0%A4%B2%E0%A4%BF%E0%A4%8F_%E0%A4%95%E0%A4%B0%E0%A5%87%E0%A4%82_%E0%A4%9A%E0%A4%95%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%9C%E0%A4%BE%E0%A4%A8%E0%A5%87%E0%A4%82_%E0%A4%AB%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87___Yoga___Jeevan_Kosh_k0ozh5.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return chakrasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Chakrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. The chest expands and the lungs get more oxygen - this makes the pose especially beneficial for asthma patients.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. It reduces the stress and tension in the body.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Sharpens eyesight.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. This asana helps to strengthen the back and increases the elasticity of the spine.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. It stimulates the endocrine glands and maintains the body metabolism at an optimal level",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Chakrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Chronic pain or injury in arms, hips, shoulders or back",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Imbalanced blood pressure",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Practitioners suffering from acute or later stages of hernia",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Any injury to the wrist or neck",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Fold your legs at your knees and ensure that your feet are placed firmly on the floor.Place your palms next to your ears, with fingers pointing forward.Inhale, put pressure on your palms and legs and lift your entire body up to form an arch.Allow your head to fall gently behind and keep your neck relaxed.Keep your body weight evenly distributed between your four limbs.Breathing Methodology: Inhale while lifting the body up.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "If you have frequent headaches or suffer from high blood pressure, you should not perform Chakrasana. Chakrasana is also contraindicated for elbow pains, slip disc, vertigo, diarrhea hernia, low blood pressure and heart problems. Pregnant women should not perform this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class urdhva_mukha_shvanasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _urdhva_mukha_shvanasanaState();
  }
}

class _urdhva_mukha_shvanasanaState extends State<urdhva_mukha_shvanasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977347/Yoga_for_relaxation___%E0%A4%8A%E0%A4%B0%E0%A5%8D%E0%A4%A7%E0%A5%8D%E0%A4%B5_%E0%A4%AE%E0%A5%81%E0%A4%96_%E0%A4%B6%E0%A5%8D%E0%A4%B5%E0%A4%BE%E0%A4%A8%E0%A4%BE%E0%A4%B8%E0%A4%A8___Urdhva_Mukha_Svanasana_Health_Benefits___Boldsky_nxim9d.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return urdhva_mukha_shvanasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Urdhva Mukha Shvanasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Opens and stretches chest (pectoralis major muscle).",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Strengthens posterior deltoid and stretches anterior deltoid.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Sharpens eyesight.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Strengthens back muscles, particularly the erector spinae, which take your spine into a back bend.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Strengthens quads, which straighten your knee joints.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Urdhva Mukha Shvanasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. If you have a neck injury, it is usually best to look straight ahead instead of looking up in the pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you have scoliosis, this pose can be difficult or painful.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. If you have fused vertebrae or disc injury (such as a slipped disc), proceed with caution.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. If you have spondylitis, proceed carefully. If you feel pain, take a break.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "There might be a tendency to hang on your shoulders when you get into this pose, such that your shoulders are close to your ear, and your neck sneaks out like a turtle’s. You must keep in mind that your shoulders must be drawn back and lengthened down as you pull your shoulder blades towards your tailbone. If you cannot do it consciously, use blocks to rest your hands. Your shoulder blades will automatically be in place.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "The position requires a distributed balance of weight on your palms and shoulders. If you have a shoulder injury, back injury or sprained wrists, it's best to stay away from this pose. Pregnant women shouldn't attempt the position without a directive from a physician.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class ushtrasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _ushtrasanaState();
  }
}

class _ushtrasanaState extends State<ushtrasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615103955/Ustrasana_Camel_Pose__Yoga_for_whole_Body_Strength_%E0%A4%AA%E0%A5%81%E0%A4%B0%E0%A5%87_%E0%A4%B6%E0%A4%B0%E0%A5%80%E0%A4%B0_%E0%A4%95%E0%A5%8B_%E0%A4%AE%E0%A5%9B%E0%A4%AC%E0%A5%82%E0%A4%A4%E0%A5%80_%E0%A4%A6%E0%A5%87%E0%A4%A4%E0%A4%BE_%E0%A4%B9%E0%A5%88_%E0%A4%89%E0%A4%B7%E0%A5%8D%E0%A4%9F%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8_Jeevan_Kosh_osh2x1.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return ushtrasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Ushtrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Reduces fat on thighs.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Opens up the hips, stretching deep hip flexors.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Stretches and strengthens the shoulders and back.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Expands the abdominal region, improving digestion and elimination.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Improves posture.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Ushtrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Breath normally throughout the practice.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Beginners after practicing Ustrasana may feel dizzy for a while. ",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. People suffering from high or low blood pressure should avoid practicing this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. People suffering from insomnia should avoid this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Assume a kneeling position on a mat and support the body on the knees and toes (bent).Slowly, lean backwards, and take the arms behind.Fix the palms to the ground, with the fingers pointing outward and the thumb towards the toes.Keep the arms straight, eyes open, gaze fixed at a point.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Those with high blood pressure and severe fatigue should avoid this pose. If you have any spine-related conditions make sure to maintain the extension throughout the spine rather than bending the spine.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class utkatasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _utkatasanaState();
  }
}

class _utkatasanaState extends State<utkatasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615104130/y2mate.com_-_Chair_Pose_Yoga_Asana_Utkatasana_in_Hindi_Yoga_For_Weight_Loss_Yoga_For_Beginners_1080p_pklwdn.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return utkatasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Utkatasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Strengthens the ankles, thighs, calves, and spine",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Stretches shoulders and chest",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Reduces flat feet",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Stimulates the abdominal organs and diaphragm",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Increases the heart rate, stimulating the circulatory and metabolic systems",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Utkatasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Do not practice this asana if you have low blood pressure or headache.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Avoid this asana if you recently suffered an injury to your leg or feet.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Those with back issues or hip problems should refrain from practising utkatasana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Stand in Tadasana.Inhale; stretch your hands in front of your chest and move it up by the sides of your head.Exhale; bend the knees, push your pelvis down, and feel that you are sitting in an imaginary chair.Maintain the pose as long as you can by keeping your hands straight and stretched.Inhale and come to the original position.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Those with high blood pressure should refrain from lifting the arms and keep their palms holding the hips. Those with knee conditions should not bend their knees too much. One can take the pose with their back leaning against the wall. Those who are flat footed should curl their toes.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class uttanasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _uttanasanaState();
  }
}

class _uttanasanaState extends State<uttanasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615104451/%E0%A4%89%E0%A4%A4%E0%A5%8D%E0%A4%A4%E0%A4%BE%E0%A4%A8%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BE_%E0%A4%AB%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87_%E0%A4%94%E0%A4%B0_%E0%A4%B8%E0%A4%BE%E0%A4%B5%E0%A4%A7%E0%A4%BE%E0%A4%A8%E0%A5%80__Standing_Forward_Bend__Uttanasana_ypc5ot.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return uttanasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Uttanasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Stretches the hips, hamstrings, and calves.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Strengthens the thighs and knees.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Keeps your spine strong and flexible.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Reduces stress, anxiety, depression, and fatigue.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Calms the mind and soothes the nerves.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Uttanasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Don't have any meal before practicing Uttanasana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Don't practice, if you are suffering from Glaucoma or Sciatica.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Pregnant women should not practice Uttanasana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "You must remember never to push yourself too far if you are not comfortable in a forward bend.Inhale when you’re open.Exhale to fold.Avoid bulging your back.Tilting of the leg is perfectly fine when doing Uttanasana.Gradually, try straightening the knees without straining too muchStay in the pose without hurting your neck or back.Can use support like blocks beneath your head if you feel the tension in the neck area.Let the prana (breath) flow effortlessly.Your tight hamstrings might make it difficult for you to bend too much, it’s alright. With practice, your body will become far more flexible.For maximum benefits, practice for 3- 5 minutes every day.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Women who are pregnant or menstruating should not bend forward completely. Do Ardha Uttanasana by keeping the spine parallel to the floor and the palms on the wall to keep the abdomen soft and the back straight. Those with spine herniation should not bend forward completely, and they should do this asana with a concave back with their palms on blocks.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class utthita_hastapadangusth extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _utthita_hastapadangusthState();
  }
}

class _utthita_hastapadangusthState extends State<utthita_hastapadangusth> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615108169/y2mate.com_-_Utthita_Padmasana_Yoga_Asana_in_Hindi_Yoga_For_Weight_Loss_Yoga_For_Beginners_1080p_dlly2b.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return utthita_hastapadangusth_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Utthita Hasta Padangusth",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Strengthens the legs and ankles",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. It deeply stretches the hamstrings (the back thigh muscles),",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Opens the hips, shoulders, and arms.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Improves sense of balance",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Improves concentration",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Utthita Hasta Padangusth",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. This asana must be done in supervision. The modifications should not be practised by beginners.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. People with sciatica pain should not practice this pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. People with a lower back or ankle injury should not practise this pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "You can hold this pose longer by supporting the raised-leg foot on the top edge of a chair back (padded with a blanket). Set the chair an inch or two from a wall and press your raised heel firmly to the wall.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Anyone suffering from an injured ankle, knee, hip, back or shoulder should refrain from the practice of Utthita Hasta Padangusthasana Strap. Any other kind of injury leading to uneasiness or discomfort, precautions should be taken to go slow and with the help of a teacher's guidance.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class vajrasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _vajrasanaState();
  }
}

class _vajrasanaState extends State<vajrasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615108472/PM_Modi_shares_animated_video_of_Vajrasana_promotes_yoga_sn0tiq.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return vajrasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Vajrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Relieves Rheumatic Pain",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Strengthens Pelvic Floor Muscles",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Helps to Calm Our Mind",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Treatment of Hypertension (High Blood Pressure)",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Improves Sleep",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Vajrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. If you have any injury in your calves or hamstrings then don't practice Vajrasana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. People suffering from Hernia or have intestinal ulcers should take medical advice and guidance before practicing Vajrasana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. If you have Arthritis in knees then don't practice Vajrasana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Bend forward until the fingers or palms of the hands touch the floor on either side of the feet. Try to touch the knees with the forehead. Do not strain. Keep the knees straight. Exhale while bending forward. Try to contract the abdomen in the final position to expel the maximum amount of air from the lungs.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "The individuals who have back pain should avoid this asana. At least, they should not bend forward fully. They can bend themselves only as far as comfortable.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class vasishtasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _vasishtasanaState();
  }
}

class _vasishtasanaState extends State<vasishtasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615108830/y2mate.com_-_Vasisthasana_Side_Plank_Pose_for_Shoulder_Arm_Neck_%E0%A4%B5%E0%A4%B6%E0%A4%B7%E0%A4%9F_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%A4%E0%A4%B0%E0%A4%95_%E0%A4%AB%E0%A4%AF%E0%A4%A6_Jeevan_Kosh_480p_lroij5.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return vasishtasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Vasishtasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Strengthens and tones your arms and shoulders.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Tests — and therefore builds — your balance, which helps improve focus and concentration.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Strengthens your back muscles, especially your lower back and your deep spinal stabilizing muscle, the quadratus lumborum.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Improves your core strength.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Builds strength in your gluteus maximus, hamstrings, quadriceps, and calves.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Vasishtasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. If you have high blood pressure, make sure to keep your head above your heart.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you have a back or leg injury, you may want to avoid this pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Students with a herniated disc or with rheumatoid arthritis may wish to avoid this pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "For this variation of vasisthasana begin on all fours with your wrists under your shoulders and your arms straight. Now, shift your right hand to the midline of your body. Extend your left leg behind you, toes tucked, and rest the ball of your left foot on the floor. You may find that it helps your balance to shift your right foot out to the right so that your right shin is at more of a diagonal. Place your left hand on your left hip.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Those with wrist, elbow and shoulder issues should avoid this pose. Do this pose with the back leaning against the wall for better balance and support.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class viparita_dandasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _viparita_dandasanaState();
  }
}

class _viparita_dandasanaState extends State<viparita_dandasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615298572/How_to_do_Dwi_Pada_Viparita_Dandasana_zybfbt.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return viparita_dandasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Viparita Dandasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Soothes and relaxes the brain.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Builds up emotional stabilityand self-confidence.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Stimulates the adrenal, thyroid, pituitary, and pineal glands.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Gently massages and strengthens the heart, preventing arterial blockage.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Increases lung capacity.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Viparita Dandasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Pregnant women are asked to keep away from such inversions that are at advance level.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Blood Pressure patients should avoid this practice of Two Legged Inverted Staff Pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Surgery of any internal organ in the body should be avoided. But taking proper guidance from a yoga teacher is important.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "If you also feel ashamed of your moth, then practice this asana and that ensures the reduction of belly fat.You should try to incorporate this asana in your yoga routine, strengthen the arms and shoulders in the upper body.Even if you do not realize this whole action, but it is really big work for your body. You have to prepare the body before performing this asana, so do not forget to warm-up the body before doing Inverted Staff Pose.A good posture is to strengthen the spine of our body. This brings flexibility to the reed bone.Apart from this, Viparita Dandasana also plays an important role in keeping your intestines active, providing speed and strength to your body.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Injuryof the neck, shoulders, arms, hips or back. Migraine or even symptoms related to migraine should be avoided. Depression or symptoms related to depression, as the flow of blood towards the heart and the head is not safe.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class viparita_karani extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _viparita_karaniState();
  }
}

class _viparita_karaniState extends State<viparita_karani> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615110509/%E0%A4%AC%E0%A5%9D%E0%A4%A4%E0%A5%80_%E0%A4%89%E0%A4%AE%E0%A5%8D%E0%A4%B0_%E0%A4%95%E0%A4%BE_%E0%A4%85%E0%A4%B8%E0%A4%B0_%E0%A4%B0%E0%A5%8B%E0%A4%95%E0%A5%87%E0%A4%97%E0%A4%BE_%E0%A4%B5%E0%A4%BF%E0%A4%AA%E0%A4%B0%E0%A5%80%E0%A4%A4_%E0%A4%95%E0%A4%B0%E0%A4%A3%E0%A5%80_Yoga_to_slow_down_ageing_effects_Viparita_Karani___Jeevan_Kosh_bmxjzr.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return viparita_karani_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Viparita Karani",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Relieves swollen ankles and varicose veins",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Helps testicular, semen, and ovarian problems in men and women respectively",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Improves digestion",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Restores tired feet or legs",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Stretches the back of the neck, front torso, and back of the legs",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Viparita Karani",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. High blood pressure: The Sadhaks who are having high blood pressure shouldn’t practice this yoga pose as it worsens the condition.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Heart disease: In the case of cardiac condition, the practicing of Legs-up-the-wall pose should be restricted.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Thyroid problems: It also shouldn’t be practiced by the patients who have enlarged thyroid.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Lie in a relaxed supine position with legs together.Raise the legs up keeping them straight.Push down on the arms and hands and raise the buttock.Support the lower back with hands, keeping elbows on the floor.Remain steady for some time.Inhale and exhale completely, hold the breath and pumping of the stomach; this is Viparita Karani.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "This asana is a mild inversion, and therefore, it must be avoided during menstruation. Avoid this asana if you have severe eye problems like glaucoma. If you have serious back and neck problems, make sure you do this asana under the guidance of a certified yoga instructor.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class viparita_virabhadrasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _viparita_virabhadrasanaState();
  }
}

class _viparita_virabhadrasanaState extends State<viparita_virabhadrasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615110617/%E0%A4%A5%E0%A4%95%E0%A4%BE%E0%A4%A8_%E0%A4%B9%E0%A5%8B_%E0%A4%95%E0%A5%8B%E0%A4%B8%E0%A5%8B%E0%A4%82_%E0%A4%A6%E0%A5%82%E0%A4%B0____%E0%A4%B5%E0%A4%BF%E0%A4%AA%E0%A4%B0%E0%A5%80%E0%A4%A4_%E0%A4%B5%E0%A5%80%E0%A4%B0%E0%A4%AD%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8____Yoga_For_Energy_Stamina_By_Priyanka_Vinayak_Sharma_kqesf5.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return viparita_virabhadrasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Viparita Virabhadrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Strengthens the lower body.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Stretches the arms and the side of the torso.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Increases the perseverance.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Strengthens the arms, neck and quads.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Opens the shoulders, chest and hips.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Viparita Virabhadrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Shoulder injuries",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Hip Problems",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. High or low blood pressure",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Start in warrior II with your right foot forward and your left foot back. Bend your front knee directly over your ankle.Inhale your right hand to the sky.Keep the bend in your front knee.Lengthen the sides of your torso with every inhale, strengthen your legs with every exhale.If it’s comfortable for your neck, turn your gaze up to the fingertips of your right hand.Soften your shoulders down your back.Hold for 3-5 breaths, then release to warrior II. Repeat on the other side.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "A person having any neck, spine or shoulder injury should avoid this pose.An individual suffering from High or low blood pressure should also avoid performing this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class shavasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _shavasanaState();
  }
}

class _shavasanaState extends State<shavasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615110580/y2mate.com_-_Relaxation_Shavasana_Hindi_480p_1_rsta8j.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return shavasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Shavasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Calms central nervous system, aiding the digestive and immune systems.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Calms the mind and reduces stress.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Reduces headache, fatigue and anxiety.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Helps lower blood pressure.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Promotes spiritual awakening and awareness of higher consciousness.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Shavasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Avoid moving your body while performing Savasana as it might disturb the practice and will fuel your distractions.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Make sure to perform it on a hard, flat surface.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Practice this in an environment that offers quiet and relaxing surroundings.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Firstly Lie straight on your back on a yoga mat. Keep both hands away from the body (about 15 cm) and palms facing upwards. Keep the feet slightly away from each other at about 30 degrees. Your spine should be straight with the shoulders touching the ground. Keep your body fully relaxed without any movement. Keep your eyes closed and focus on breathing through your nostrils. Do not let your head tilt on both sides; Keep it straight and comfortable. After four to five minutes, open your eyes and slowly release yourself from the pose.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "People who are not advised to lie on back should avoid this pose. One who is suffering with severe acidity may hurt himself/herself to lying on the back because food pipe may displease your body system.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class virasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _virasanaState();
  }
}

class _virasanaState extends State<virasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016628/Virasana_Hero_Pose_Health_Benefits_in_Pregnancy_Yoga___%E0%A4%B5%E0%A5%80%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%B8%E0%A4%B9%E0%A5%80_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BC%E0%A4%BE_-_%E0%A4%AB%E0%A4%BC%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87___Jeevan_Kosh_smdrcu.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return virasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Virasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Virasana reduces swelling of the legs during pregnancy",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Regular practice of Virasana (Hero Pose) creates a pull in the thighs, knees, and ankles and thus makes them stronger",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Helps in removing symptoms of menopause also",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. It also has a great effect on the navel area",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Virasana is a good posture to raise the hips",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Virasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. If you have pain in your knees, then do not do this asana",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. In case you have any kind of problem-related to the heart, then avoid this asana",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. If you have trouble doing this then you can do this seat on the cushion or pillow or sit on a block.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "At first, sit in Vajrasana on the floor or on a yoga mat.Hold your right ankle and remove the right paw from the bottom of the hip and keep it out of the right thigh.Do this with the left leg too (tops of the feet must touch the ground).Doing this, your hip or sitting bones should touch the ground.Rest your hands on your knees (Palms should touch your knee).As long as you can sit comfortably, sit in Virasana.Keep breathing normally.To get out of the pose place your palms on the floor and lift your hip.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "Hero Pose or Virasana is a comfortable seated pose for meditation or pranayama, but there is immense stretch at the knees and the ankles while seated, hence can be a big risk if one is very stiff at the knees and the ankles or is down with an injury at the knees or ankles. A proper guidance from an experienced teacher is always helpful in such situations.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class vrikshasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _vrikshasanaState();
  }
}

class _vrikshasanaState extends State<vrikshasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016007/Vrikshasana_Tree_Pose_Yoga_for_strong_legs_Height_%E0%A4%B5%E0%A5%83%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BC%E0%A4%BE_%E0%A4%94%E0%A4%B0_%E0%A4%AB%E0%A4%BC%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87_Jeevan_Kosh_f1xk1e.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return vrikshasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Vrikshasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. It strengthens the legs, and opens the hips.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. It improves your neuromascular coordination.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. It helps with balance and endurance.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. It improves alertness and concentration.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. It may help those who suffer from sciatica (nerve pain in the leg).",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Vrikshasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Do not do this posture in knee or ankle pain, if you have any insomnia, avoid this posture.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. Do not do this posture in case of dizziness.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. And remember not to do this posture in migraine.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Stand straight.Balance firmly on your left leg and lift your right leg. Bend your right leg at the knee.Now, place your right foot against the inside of your left thigh. Make sure the toes of your right foot facing downward.Join your palms in prayer at your chest level. Now, lift your arms over your head till your hands are stretched upward.Hold the position while breathing deeply. Lower your arms to chest level and then separate your palms. Straighten your right leg and stand erect again. Repeat the posture with your right leg.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "If you suffer from migraine, high or low blood pressure, do not practice this asana. Avoid practising Vrikshasana if you suffer from insomnia. In the beginning, you may find it difficult to place your leg above the knee, so you can place it below the knees but never place it on the knee.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class vrischikasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _vrischikasanaState();
  }
}

class _vrischikasanaState extends State<vrischikasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615111188/y2mate.com_-_vrischik_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B8_%E0%A4%95%E0%A4%B0_in_%E0%A4%B9%E0%A4%A8%E0%A4%A6_KV_yoga_competition_Scorpion_Pose_Vrischikasana_Yoga_Pose__480p_v6ffbl.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return vrischikasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Vrischikasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Arrests the physical aging process.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Improves the blood flow to the brain and pituitary gland.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Revitalizes all body systems.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Improves circulation in the lower limbs and abdomen.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Tones the reproductive organs.",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Vrischikasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. Do not attempt this pose until your yoga trainer or guru tells you that you are ready for it.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. You should not perform this pose if you suffer from any hip or back problems.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. If you have a history of heart disease, it is best to avoid this posture.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Assume the final position of Shirshasana.Relax your whole body, bend the knees and arch the back.Separate your lower arms so that they lie parallel with each other, have your palms flat on the floor.Transfer the weight onto your forearms and maintain the balance.Lower the feet towards the head.Raise the head backward and upward.Raise your upper arms so that they are vertical.The heels should rest on the crown of the head in the final pose.Relax your whole body.Stay in this position as long as you feel comfortable.Release into Shirshasana and lower your legs.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "After practicing this posture, practice the Paschimottanasana or forward bend asanas to lower the back tension. If you are a patient of High blood pressure or heart patient then do not practice this pose. If you have abdominal related disorders then do not practice scorpion pose.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class yoganidrasana extends StatefulWidget {
  // ignore: use_key_in_widget_constructors

  @override
  State<StatefulWidget> createState() {
    return _yoganidrasanaState();
  }
}

class _yoganidrasanaState extends State<yoganidrasana> {
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;

  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );

  @override
  void dispose() {
    _videoPlayerController1.dispose();

    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615298790/How_to_do_yoga_nidra_asana._%E0%A4%AF%E0%A5%8B%E0%A4%97%E0%A4%BE_%E0%A4%A8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%BE_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%B8%E0%A4%AC%E0%A4%B8%E0%A5%87_%E0%A4%86%E0%A4%B8%E0%A4%BE%E0%A4%A8_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BE_Yognidrasan_yfrgho.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
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
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
              child: Image(
                image: AssetImage("assets/logo1.png"),
                height: 180,
              ),
            )),
            actions: [
              InkWell(
                  child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: IconButton(
                          icon: Icon(Icons.translate),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute<void>(
                                builder: (BuildContext context) {
                              return yoganidrasana_trans();
                            }));
                          }))),
            ]),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(children: <Widget>[
              Container(
                child: Center(
                  child: _chewieController != null &&
                          _chewieController
                              .videoPlayerController.value.initialized
                      ? Chewie(
                          controller: _chewieController,
                        )
                      : Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: spinkit,
                            ),
                            SizedBox(height: 20),
                            Text('Loading'),
                          ],
                        ),
                ),
              ),
              Container(
                  child: Column(children: [
                Row(
                  children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("Advantages of Yoganidrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        )),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1.  Improved Blood Circulation throughout",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "2. Healthy Respiratory System",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                          child: Text(
                            "3. Strengthened Abdomen",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. Improved Posture",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                            child: Text(
                              "5. Fortified Adrenal Glands",
                              textDirection: TextDirection.ltr,
                            ),
                          )),
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                          child: Text("Limitation of Yoganidrasana",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      )
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "1. A person suffering from severe back pain should not do this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. If you are a patient of lumbar disc herniation, do not do this asana.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Row(children: [
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "3. Do not do this asana if you are a patient of high BP or asthma.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      )
                    ]),
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                      child: Divider(
                        color: Colors.blueGrey,
                        thickness: 0.2,
                      ),
                    ),
                    Row(
                      children: [
                        Column(children: [
                          Container(
                            padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text("Do's",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w700)),
                          ),
                        ])
                      ],
                    ),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                          fit: FlexFit.tight,
                          child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                            child: Center(
                              child: Text(
                                "Lie down on the floor.Bend your right knee and hold your right foot with your left hand. Bring your right elbow under your right knee and lift your right foot further up. Hold your right calf with your left hand and bring your right knee behind your right shoulder. Rotate your right hip slightly and bring your right foot above your head. Push your chest forward and place your right ankle behind your head. Repeat the sequence with your left leg. Interlock your feet behind your head and wrap your arms around your lower back and interlock your fingers. Stay in this pose for as long as you can.",
                              ),
                            ),
                          ))
                    ]),
                    Row(children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("Don'ts",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    ]),
                    SizedBox(height: 10),
                    Row(children: [
                      Flexible(
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                            "If you have any recent medical concerns, discuss with your doctor before practising this yoga pose. Practitioners suffering from leg, hips, back or waist injury shouldn’t practice this pose. Pregnant women and women having periods should avoid practising this pose. It’s always advisable to practice this pose under the guidance of an expert yoga teacher or ask for your partners help.",
                            textDirection: TextDirection.ltr,
                          ),
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ])),
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "Consult Now",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class translate1 extends StatefulWidget {
  translate1({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _translate1State();
  }
}

class _translate1State extends State<translate1> {
  bool pressed = false;
  TargetPlatform _platform;
  VideoPlayerController _videoPlayerController1;
  VideoPlayerController _videoPlayerController2;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    this.initializePlayer();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.blueGrey,
    size: 50.0,
  );
  @override
  void dispose() {
    _videoPlayerController1.dispose();
    _videoPlayerController2.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  Future<void> initializePlayer() async {
    _videoPlayerController1 = VideoPlayerController.network(
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614684392/as1_cwtwin.mp4');
    await _videoPlayerController1.initialize();

    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController1,
      autoPlay: false,
      looping: false,
      // Try playing around with some of these other options:

      // showControls: false,
      // materialProgressColors: ChewieProgressColors(
      //   playedColor: Colors.red,
      //   handleColor: Colors.blue,
      //   backgroundColor: Colors.grey,
      //   bufferedColor: Colors.lightGreen,
      // ),
      // placeholder: Container(
      //   color: Colors.grey,
      // ),
      // autoInitialize: true,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FreeDr.Services",
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
            icon: new Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
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
        body: SingleChildScrollView(
          child: Column(children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Center(
                child: _chewieController != null &&
                        _chewieController
                            .videoPlayerController.value.initialized
                    ? Chewie(
                        controller: _chewieController,
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: spinkit,
                          ),
                          SizedBox(height: 20),
                          Text('Loading'),
                        ],
                      ),
              ),
            ),
            Container(
                child: Column(children: [
              Row(
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: Text("हलासन के फायदे",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 10),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "1. पीठ और गर्दन तक खिंचाव, जिससे नसों को कायाकल्प मिलता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. थायराइड और अधिवृक्क ग्रंथियों के लिए प्रभावी",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                        child: Text(
                          "3. सहानुभूति तंत्रिकाओं के संचालन में सुधार करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. रक्त संचार बढ़ाएं",
                        textDirection: TextDirection.ltr,
                      ),
                    ),
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. अस्थमा, ब्रोंकाइटिस के लिए उपयोगी है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("हलासन के नुकसान",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    )
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "1. उच्च रक्तचाप",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "2. स्लिप डिस्क",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(20, 7, 00, 0),
                        child: Text(
                          "3. माहवारी के दौरान न करें",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "4. हरनिया",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. गर्भवती महिला",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    child: Divider(
                      color: Colors.blueGrey,
                      thickness: 0.2,
                    ),
                  ),
                  Row(
                    children: [
                      Column(children: [
                        Container(
                          padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
                          child: Text("करने योग्य",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w700)),
                        ),
                      ])
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Center(
                            child: Text(
                                "अपने सिर के बल जमीन पर लंबवत पैर की उंगलियों से घुटनों को सीधा रखें। पैर एक सीधी रेखा में हैं। जहाँ तक संभव हो, पीठ सीधी और खड़ी रहती है। हथेलियों को जमीन पर सीधा रखते हुए। कंधे जमीन पर टिकाकर। ठोड़ी छाती के खिलाफ आराम। "),
                          ),
                        ))
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("क्या न करें",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700)),
                      ),
                    )
                  ]),
                  SizedBox(height: 10),
                  Row(children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "घुटनों को मोड़ें। गर्दन को हिलाएं या इसे ठोड़ी की लॉक पोजिशन में ओवरस्ट्रेन करें। इस आसन को तेज गति से करें क्योंकि रीढ़ पर बहुत अधिक तनाव डाला जाता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                  ]),
                  SizedBox(height: 20)
                ],
              ),
            ])),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
            splashColor: Colors.black,
            hoverElevation: 500,
            hoverColor: Colors.amber,
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            backgroundColor: Colors.blueGrey,
            child: Container(
                child: Image(
              colorBlendMode: BlendMode.clear,
              image: AssetImage("assets/doctorlogo.png"),
              height: 40,
            ))),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
            child: Container(
          height: 60,
          color: Colors.blueGrey,
          child: Container(
              margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
              child: Center(
                child: Text(
                  "अब परामर्श करें",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                ),
              )),
        )),
      ),
    );
  }
}

class consultyogateacher1 extends StatefulWidget {
  @override
  _consultyogateacher1State createState() => _consultyogateacher1State();
}

class _consultyogateacher1State extends State<consultyogateacher1> {
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
  var _currentStep = 0;
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
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Image(
            image: AssetImage("assets/logo1.png"),
            height: 180,
          ),
        )),
      ),
      body: _loading
          ? spinkit
          : SafeArea(
              child: Column(children: [
              Container(
                margin: const EdgeInsets.fromLTRB(150, 10, 150, 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: Color(0xff000000),
                    width: 3,
                  ),
                  image: DecorationImage(
                      image: AssetImage("assets/doctor.png"),
                      fit: BoxFit.fitWidth),
                ),
                height: 140,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Center(
                          child: Container(
                              margin: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(color: Colors.grey, blurRadius: 7)
                                  ],
                                  color: Colors.brown[200]),
                              height: 137,
                              width: 370,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                          padding: const EdgeInsets.fromLTRB(
                                              25, 20, 0, 0),
                                          child: Text("Dr. Kamal Meghani",
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight:
                                                      FontWeight.w600))),
                                      Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              47, 20, 0, 0),
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.blueGrey),
                                          height: 30,
                                          width: 100,
                                          child: Text("14 Year Exp"))
                                    ],
                                  ),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          0, 5, 225, 0),
                                      child: Text(
                                        "Physician In",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w600),
                                      )),
                                  Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          27, 2, 0, 0),
                                      child: Text(
                                          "Kamal's Clinic , Malviya nagar , Jaipur (Rajasthan)",
                                          style: TextStyle(fontSize: 16))),
                                ],
                              )))
                    ],
                  )
                ],
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(5, 30, 0, 0),
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    children: [
                      IntrinsicHeight(
                          child: Row(
                        children: [
                          Wrap(children: [
                            Container(
                                child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 0, 60),
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
                                            5, 10, 30, 0),
                                        child: Text(
                                          "Consult with VideoCall in WhatsApp",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        )),
                                  ]),
                                ],
                              ),
                              Column(children: [
                                Row(children: [
                                  Center(
                                    child: new InkWell(
                                        child: new Text('Open Browser'),
                                        onTap: () => launch(
                                            'https://api.whatsapp.com/send/?phone=9170476%2000128&text=Hello%2C&app_absent=0')),
                                  ),
                                ]),
                                SizedBox(
                                  height: 50,
                                ),
                              ]),
                            ],
                          )
                        ],
                      )),
                      /* Linkify(
                        onOpen: _onOpen,
                        text:
                            "https://api.whatsapp.com/send/?phone=9170476%2000128&text=Hello%2C&app_absent=0",
                      )*/
                    ],
                  )),
            ])),
    );
  }

  Future<void> _onOpen(LinkableElement link) async {
    if (await canLaunch(link.url)) {
      await launch(link.url);
    } else {
      throw 'Could not launch $link';
    }
  }
}

class gopalknowmore extends StatefulWidget {
  @override
  _gopalknowmoreState createState() => _gopalknowmoreState();
}

class _gopalknowmoreState extends State<gopalknowmore> {
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
          image: NetworkImage("https://i.ibb.co/G2YkMZV/gopalsir.png"),
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
                        child: Text("Mr. Gopal Singh Rajpoot",
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
                    child: Text("7 Year Exp")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Yoga Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                            "P.G in Yoga",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child:
                              Text("Jagatguru sanskrit university , Jaipur")),
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
          image: NetworkImage("https://i.ibb.co/G2YkMZV/gopalsir.png"),
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
                          child: Text("Mr. Gopal Singh Rajpoot",
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
                                child: Center(child: Text("7 Year Exp")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Yoga Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                            "P.G in Yoga",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Jagatguru sanskrit university, Jaipur",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                      ),
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

class savitaknowmore extends StatefulWidget {
  @override
  _savitaknowmoreState createState() => _savitaknowmoreState();
}

class _savitaknowmoreState extends State<savitaknowmore> {
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
          image: NetworkImage("https://i.ibb.co/gykF5V4/savitamam.png"),
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
                        child: Text("Mrs. Savita Pareek",
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
                    child: Text("10 Year Exp")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Yoga Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "LivYog , 14/70, opp. Amit Bharadwaaj Petrol Pump , Malviya Nagar , Jaipur (Rajasthan)",
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
                            "MA in Yogic Science",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text(
                              "Mahatma Jyotirao Phule University , Jaipur")),
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
          image: NetworkImage("https://i.ibb.co/gykF5V4/savitamam.png"),
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
                          child: Text("Mrs. Savita Pareek",
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
                                child: Center(child: Text("10 Year Exp")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Yoga Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "LivYog , 14/70, opp. Amit Bharadwaaj Petrol Pump, Malviya Nagar , Jaipur (Rajasthan)",
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
                            "MA in Yogic Science",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Mahatma Jyotirao Phule University, Jaipur",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                      ),
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

class sunandaknowmore extends StatefulWidget {
  @override
  _sunandaknowmoreState createState() => _sunandaknowmoreState();
}

class _sunandaknowmoreState extends State<sunandaknowmore> {
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
          image: NetworkImage("https://i.ibb.co/RQ60wD8/sunandamam.png"),
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
                        child: Text("Mrs. Sunanda Patil",
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
                    child: Text("12 Year Exp")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Yoga Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Patanjali Yoga Committee , Jhulelal mandir , Sector 11 , Malviya Nagar , Jaipur (Rajasthan)",
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
                            "Bsc Hons",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text("Regional College , Ajmer")),
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
          image: NetworkImage("https://i.ibb.co/RQ60wD8/sunandamam.png"),
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
                          child: Text("Mrs. Sunanda Patil",
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
                                child: Center(child: Text("12 Year Exp")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Yoga Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Patanjali Yoga Committee , Jhulelal mandir , Sector 11 , Malviya Nagar , Jaipur (Rajasthan)",
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
                            "Bsc Hons",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Regional College, Ajmer",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                      ),
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

class rajkanwarknowmore extends StatefulWidget {
  @override
  _rajkanwarknowmoreState createState() => _rajkanwarknowmoreState();
}

class _rajkanwarknowmoreState extends State<rajkanwarknowmore> {
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
          image: NetworkImage("https://i.ibb.co/JvRtZsH/rajkanwarmam.png"),
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
                        child: Text("Miss. Raj Kanwar",
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
                    child: Text("5 Year Exp")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Yoga Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                            "DYAS",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text("Rashtriya Sanskrit Sansthan, Jaipur")),
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
          image: NetworkImage("https://i.ibb.co/JvRtZsH/rajkanwarmam.png"),
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
                          child: Text("Miss. Raj Kanwar",
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
                                child: Center(child: Text("5 Year Exp")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Yoga Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                            "DYAS",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Rashtriya Sanskrit Sansthan, Jaipur",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                      ),
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

class yashaswiknowmore extends StatefulWidget {
  @override
  _yashaswiknowmoreState createState() => _yashaswiknowmoreState();
}

class _yashaswiknowmoreState extends State<yashaswiknowmore> {
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
          image: NetworkImage("https://i.ibb.co/2t0sBp8/yashaswisir.png"),
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
                        child: Text("Mr. Yashaswi Goswami",
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
                    child: Text("12 Year Exp")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Yoga Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "319 , Mahaveer Nagar , Durgapura , Jaipur (Rajasthan)",
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
                            "Masters in Yoga",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text("Sikkim Manipal University, Jaipur")),
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
          image: NetworkImage("https://i.ibb.co/2t0sBp8/yashaswisir.png"),
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
                          child: Text("Mr. Yashaswi Goswami",
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
                                child: Center(child: Text("12 Year Exp")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Yoga Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "319 , Mahaveer Nagar , Durgapura , Jaipur (Rajasthan)",
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
                            "Masters in Yoga",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Sikkim Manipal University , Jaipur",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                      ),
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

class raviknowmore extends StatefulWidget {
  @override
  _raviknowmoreState createState() => _raviknowmoreState();
}

class _raviknowmoreState extends State<raviknowmore> {
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
          image: NetworkImage("https://i.ibb.co/YZmmLJ8/ravisir.png"),
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
                        child: Text("Mr. Ravi Meena",
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
                    child: Text("3 Year Exp")),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                    child: Text(
                      "Yoga Teacher In",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                    )),
                Container(
                    margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                    child: Text(
                        "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                            "Certificite in Yoga",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Container(
                          margin: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                          child: Text("Rajasthan University, Jaipur")),
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
          image: NetworkImage("https://i.ibb.co/YZmmLJ8/ravisir.png"),
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
                          child: Text("Mr. Ravi Meena",
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
                                child: Center(child: Text("3 Year Exp")))
                          ])
                    ],
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                      child: Text(
                        "Yoga Teacher In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      )),
                  Container(
                      margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                      child: Text(
                          "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                            "Certificate in Yoga",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w400),
                          )),
                      Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              "Rajasthan University , Jaipur",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w400),
                            )),
                      ),
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

class gopalconsultpage extends StatefulWidget {
  @override
  _gopalconsultpageState createState() => _gopalconsultpageState();
}

class _gopalconsultpageState extends State<gopalconsultpage> {
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
                  image: NetworkImage("https://i.ibb.co/G2YkMZV/gopalsir.png"),
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
                                child: Text("Mr. Gopal Singh Rajpoot",
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
                            child: Text("7 Year Exp")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Yoga Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9184327%2080354&text=Hello%2C&app_absent=0",
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
                  image: NetworkImage("https://i.ibb.co/G2YkMZV/gopalsir.png"),
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
                                  child: Text("Mr. Gopal Singh Rajpoot",
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
                                        child:
                                            Center(child: Text("7 Year Exp")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Yoga Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9184327%2080354&text=Hello%2C&app_absent=0",
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

class savitaconsultpage extends StatefulWidget {
  @override
  _savitaconsultpageState createState() => _savitaconsultpageState();
}

class _savitaconsultpageState extends State<savitaconsultpage> {
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
                  image: NetworkImage("https://i.ibb.co/gykF5V4/savitamam.png"),
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
                                child: Text("Mrs. Savita Pareek",
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
                            child: Text("10 Year Exp")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Yoga Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "14/70, opp. Amit Bharadwaaj Petrol Pump, Malviya nagar , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9194628%2091973&text=Hello%2C&app_absent=0",
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
                  image: NetworkImage("https://i.ibb.co/gykF5V4/savitamam.png"),
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
                                  child: Text("Mrs. Savita Pareek",
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
                                        child:
                                            Center(child: Text("10 Year Exp")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Yoga Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "14/70, opp. Amit Bharadwaaj Petrol Pump , Malviya nagar , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9194628%2091973&text=Hello%2C&app_absent=0",
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

class sunandaconsultpage extends StatefulWidget {
  @override
  _sunandaconsultpageState createState() => _sunandaconsultpageState();
}

class _sunandaconsultpageState extends State<sunandaconsultpage> {
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
                      NetworkImage("https://i.ibb.co/RQ60wD8/sunandamam.png"),
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
                                child: Text("Mrs. Sunanda Patil",
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
                            child: Text("12 Year Exp")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Yoga Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Patanjali Yoga Committee , Jhulelal mandir , Sector 11 , Malviya Nagar , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9198292%2056633&text=Hello%2C&app_absent=0",
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
                      NetworkImage("https://i.ibb.co/RQ60wD8/sunandamam.png"),
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
                                  child: Text("Mrs. Sunanda Patil",
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
                                        child:
                                            Center(child: Text("12 Year Exp")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Yoga Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "Patanjali Yoga Committee , Jhulelal mandir , Sector 11 , Malviya Nagar , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9198292%2056633&text=Hello%2C&app_absent=0",
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

class rajkanwarconsultpage extends StatefulWidget {
  @override
  _rajkanwarconsultpageState createState() => _rajkanwarconsultpageState();
}

class _rajkanwarconsultpageState extends State<rajkanwarconsultpage> {
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
                      NetworkImage("https://i.ibb.co/JvRtZsH/rajkanwarmam.png"),
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
                                child: Text("Miss. Raj Kanwar",
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
                            child: Text("5 Year Exp")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Yoga Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9177919%2018500&text=Hello%2C&app_absent=0",
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
                      NetworkImage("https://i.ibb.co/JvRtZsH/rajkanwarmam.png"),
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
                                  child: Text("Miss. Raj Kanwar",
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
                                        child:
                                            Center(child: Text("5 Year Exp")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Yoga Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9177919%2018500&text=Hello%2C&app_absent=0",
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

class yashaswiconsultpage extends StatefulWidget {
  @override
  _yashaswiconsultpageState createState() => _yashaswiconsultpageState();
}

class _yashaswiconsultpageState extends State<yashaswiconsultpage> {
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
                      NetworkImage("https://i.ibb.co/2t0sBp8/yashaswisir.png"),
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
                                child: Text("Mr. Yashaswi Goswami",
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
                            child: Text("12 Year Exp")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Yoga Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "319 , Mahaveer Nagar , Durgapura , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9188903%2059793&text=Hello%2C&app_absent=0",
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
                      NetworkImage("https://i.ibb.co/2t0sBp8/yashaswisir.png"),
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
                                  child: Text("Mr. Yashaswi Goswami",
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
                                        child:
                                            Center(child: Text("12 Year Exp")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Yoga Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "319 , Mahaveer Nagar , Durgapura , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9188903%2059793&text=Hello%2C&app_absent=0",
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

class raviconsultpage extends StatefulWidget {
  @override
  _raviconsultpageState createState() => _raviconsultpageState();
}

class _raviconsultpageState extends State<raviconsultpage> {
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
                  image: NetworkImage("https://i.ibb.co/YZmmLJ8/ravisir.png"),
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
                                child: Text("Mr. Ravi Meena",
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
                            child: Text("3 Year Exp")),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 8, 0, 0),
                            child: Text(
                              "Yoga Teacher In",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w600),
                            )),
                        Container(
                            margin: const EdgeInsets.fromLTRB(25, 3, 0, 0),
                            child: Text(
                                "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9192611%2011524&text=Hello%2C&app_absent=0",
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
                  image: NetworkImage("https://i.ibb.co/YZmmLJ8/ravisir.png"),
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
                                  child: Text("Mr. Ravi Meena",
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
                                        child:
                                            Center(child: Text("3 Year Exp")))
                                  ])
                            ],
                          ),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 5, 0, 0),
                              child: Text(
                                "Yoga Teacher In",
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w600),
                              )),
                          Container(
                              margin: const EdgeInsets.fromLTRB(25, 2, 0, 0),
                              child: Text(
                                  "Jagatguru sanskrit university , Bhakrota , Jaipur (Rajasthan)",
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
                                      "https://api.whatsapp.com/send/?phone=9192611%2011524&text=Hello%2C&app_absent=0",
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

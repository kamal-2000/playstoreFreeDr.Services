import 'videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

import 'package:video_player/video_player.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class hanumanasana_trans extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _hanumanasana_transState();
  }
}

class _hanumanasana_transState extends State<hanumanasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614974951/y2mate.com_-_Hanuman_asana_practice_easilymonkey_posesplit_pose%E0%A4%B9%E0%A4%A8%E0%A4%AE%E0%A4%A8_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%95_%E0%A4%B2%E0%A4%8F_%E0%A4%95%E0%A4%B8_%E0%A4%85%E0%A4%AD%E0%A4%AF%E0%A4%B8_%E0%A4%95%E0%A4%B0beginner_1080p_izn6lf.mp4');
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
                      child: Text("हनुमानासन के फायदे",
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
                          "1. हनुमानासन जांघों, हैमस्ट्रिंग और कण्ठों को फैलाने में मदद करता है।",
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
                            "2. यह पेट के अंगों को उत्तेजित करने में मदद करता है।",
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
                          "3. हनुमानासन कूल्हों पर पैर के लचीलेपन का उत्कृष्ट परीक्षण है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. यौन समस्याओं के उपचार या रोकथाम में आसन बहुत उपयोगी है।",
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
                            "5. यह कूल्हों की मांसपेशियों के लचीलेपन को बढ़ाता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("हनुमानासन के नुकसान",
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
                                "अपने सिर के ऊपर जमीन पर लंबवत पैर की उंगलियों से घुटनों को सीधा रखें।  पैर एक सीधी रेखा में हैं।  जहाँ तक संभव हो, पीठ सीधी और खड़ी रहती है।  हथेलियों से जमीन पर सीधा वार करें।  कंधे जमीन पर टिकाकर।  ठोड़ी छाती के खिलाफ आराम।"),
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
                          "घुटनों को मोड़ें।  गर्दन को हिलाएं या इसे ठोड़ी की लॉक पोजिशन में ओवरस्ट्रेन करें।  इस आसन को तेज गति से आगे बढ़ाएं क्योंकि रीढ़ पर बहुत तनाव डाला जाता है।",
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

class svasstikasana_trans extends StatefulWidget {
  svasstikasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _svasstikasana_transState();
  }
}

class _svasstikasana_transState extends State<svasstikasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614974870/%E0%A4%B8%E0%A5%8D%E0%A4%B5%E0%A4%B8%E0%A5%8D%E0%A4%A4%E0%A4%BF%E0%A4%95%E0%A4%BE%E0%A4%B8%E0%A4%A8_Svastikasana_Hindi_rwmvzr.mp4');
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
                      child: Text("स्वास्तिकासन के फायदे",
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
                          "1. निचले शरीर को स्ट्रेच करता है: हैमस्ट्रिंग और ग्लूट्स स्ट्रेच होते हैं। यह धावकों के लिए एक महान खिंचाव है।",
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
                            "2. स्पाइनल अलाइनमेंट: रीढ़ फैली हुई है जो पीठ को मजबूत बनाती है।",
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
                          "3. ऑप्टिमल ऑर्गन फंक्शनिंग: जैसे-जैसे धड़ को बढ़ाया जाता है, सभी अंगों को कुशलता से कार्य करने के लिए इष्टतम स्थान प्राप्त होता है।",
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
                            "4. शांति को उत्तेजित करता है: जैसा कि हमारी आँखें त्रिकुटी (तीसरी आँखों) पर केंद्रित हैं, शांति और स्पष्टता को प्रेरित किया जाता हैl",
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
                            "5. ध्यान मुद्रा: स्वातिकासन एक अच्छा ध्यान मुद्रा है।  खासतौर पर ऐसे लोगों के लिए जिनमें बैठना मुश्किल है, पद्मासन और सिद्धासन जैसे अधिक शास्त्रीय पोज देते हैं।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("स्वास्तिकासन के नुकसान",
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
                          "1. चोट",
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
                            "2. गठिया",
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
                          "3. कटिस्नायुशूल",
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
                            "4. गर्भवती महिला",
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
                                "सबसे पहले, अपने पैरों को आगे फैलाएं और जमीन पर बैठें।  अब आप बाएं पैर को अंदर की दाईं जांघ पर और दाएं पैर को बाईं बाईं जांघ पर रखें।  रीढ़ को सीधा रखें।  यदि आप ज्ञानमुद्रा में बैठते हैं, तो यह और भी अच्छा है।  ध्यान रखें कि आपके घुटने जमीन को छूते हों।  आपका पूरा शरीर, कमर और पीठ एक सीध में होना चाहिए।"),
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
                          "कटिस्नायुशूल से पीड़ित व्यक्ति को इस आसन का अभ्यास नहीं करना चाहिए।  अगर आपको रीढ़ से जुड़ी समस्या है तो इस आसन का अभ्यास न करें।  यह आसन उन लोगों के लिए नहीं किया जाना चाहिए जिनके घुटनों में दर्द है।",
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

class sarvangasana_trans extends StatefulWidget {
  sarvangasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _sarvangasana_transState();
  }
}

class _sarvangasana_transState extends State<sarvangasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016608/Yoga_for_Hair_Fall_-_Grey_Hair_Sarvangasana___%E0%A4%B8%E0%A5%9E%E0%A5%87%E0%A4%A6_%E0%A4%AC%E0%A4%BE%E0%A4%B2_-_%E0%A4%9D%E0%A5%9C%E0%A4%A4%E0%A5%87_%E0%A4%AC%E0%A4%BE%E0%A4%B2%E0%A5%8B%E0%A4%82_%E0%A4%95%E0%A4%BE_%E0%A4%87%E0%A4%B2%E0%A4%BE%E0%A4%9C_%E0%A4%B8%E0%A4%B0%E0%A5%8D%E0%A4%B5%E0%A4%BE%E0%A4%82%E0%A4%97%E0%A4%BE%E0%A4%B8%E0%A4%A8___Jeevan_Kosh_qvn7lt.mp4');
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
                      child: Text("सर्वांगासन के फायदे",
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
                          "1. थाइमस ग्रंथि उत्तेजित होती है जो प्रतिरक्षा प्रणाली को बढ़ाती है।",
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
                            "2. थायराइड पर इसके प्रभाव के कारण शरीर के वजन को सामान्य करता है",
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
                          "3. गर्दन से गुजरने वाली नसों को टोन्ड किया जाता है और गर्दन का लचीलापन बढ़ाया जाता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. वैरिकाज़ नसों को रोकता है और ठीक करता है।",
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
                            "5. यह पैराथायराइड ग्रंथियों को संतुलित करता है जो हड्डियों के पुनर्जनन और सामान्य विकास को सुनिश्चित करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सर्वांगासन के नुकसान",
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
                          "1. दस्त",
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
                            "2. सिरदर्द",
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
                          "3. उच्च रक्तचाप",
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
                            "4. गर्दन में चोट",
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
                            "5. माहवारी",
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
                                "पैर को घुटनों से सीधा रखते हुए पंजों को आसमान की तरफ इशारा करें।  कोशिश करें और शरीर को छाती से पैर की उंगलियों तक एक सीधी रेखा में रखें।  सिर सीधी और आंखें पैर की उंगलियों पर टिकी हुई हैं।  सुनिश्चित करें कि ट्रंक को काफी लंबवत उठाया गया है ताकि ठोड़ी आराम से छाती के खिलाफ आराम कर सके।"),
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
                          "घुटनों को मोड़ें।  गर्दन को हिलाएं या ठोड़ी लॉक स्थिति में इसे ओवरस्ट्रेन करें।  आसन की स्थिति में पैरों को सिर के ऊपर ले आएं लेकिन तनाव होने पर उन्हें पूरी तरह से लंबवत न रखें।  सिर को फर्श से उठाएं।  पैरों को तनाव दें या पैरों को इंगित करें क्योंकि यह पैरों को सिकोड़ता है और रक्त की निकासी को रोकता है।",
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

class suryanamaskar_trans extends StatefulWidget {
  suryanamaskar_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _suryanamaskar_transState();
  }
}

class _suryanamaskar_transState extends State<suryanamaskar_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016450/Learn_Step_by_Step_Surya_Namaskar_w627ez.mp4');
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
                      child: Text("सूर्य नमस्कार के फायदे",
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
                          "1. वजन कम करने में मदद करता है",
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
                            "2. चमकती त्वचा",
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
                          "3. बेहतर पाचन तंत्र",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. नियमित मासिक धर्म चक्र सुनिश्चित करता है",
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
                            "5. रक्त शर्करा के स्तर को नीचे लाता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सूर्य नमस्कार के नुकसान",
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
                          "1. सामान्य शरीर की कमजोरी",
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
                            "2. कंधे में चोट",
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
                          "3. गर्भवती महिलाओं को सबसे ज्यादा सूर्य नमस्कार के अभ्यास से बचना चाहिए",
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
                            "4. कलाई या पैरों में चोट",
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
                                "सही शारीरिक मुद्राएँ बनाए रखें।  उचित और लयबद्ध श्वास लें।  क्रम में चरणों का पालन करें।  पुनरावृत्ति की संख्या धीरे-धीरे बढ़ाएं।  स्वस्थ आहार का पालन करें - संभवतः शाकाहारी भोजन।  अपने आप को दैनिक आधार पर प्रशिक्षित करें।  प्रत्येक मुद्रा करते समय जागरूकता रखें।  आरामदायक वस्त्र पहनें।  सुनिश्चित करें कि आप हाइड्रेटेड हैं।  इन अभ्यासों को धीमी गति से शुरू करें"),
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
                          "यादृच्छिक क्रम में शुरू न करें।  आपके द्वारा किए जा सकने वाले पुनरावृत्ति की संख्या के बारे में जल्दी में नहीं हैं।",
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

class suptapadangusthasana_trans extends StatefulWidget {
  suptapadangusthasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _suptapadangusthasana_transState();
  }
}

class _suptapadangusthasana_transState
    extends State<suptapadangusthasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016602/Supta_Padangusthasana__Yoga_for_Arthritis_%E0%A4%97%E0%A4%A0%E0%A4%BF%E0%A4%AF%E0%A4%BE_%E0%A4%95%E0%A4%AE%E0%A4%B0_%E0%A4%A6%E0%A4%B0%E0%A5%8D%E0%A4%A6_%E0%A4%95%E0%A5%87_%E0%A4%B2%E0%A4%BF%E0%A4%8F_%E0%A4%B8%E0%A5%81%E0%A4%AA%E0%A5%8D%E0%A4%A4_%E0%A4%AA%E0%A4%A6%E0%A4%82%E0%A4%97%E0%A5%81%E0%A4%B8%E0%A5%8D%E0%A4%A5%E0%A4%BE%E0%A4%B8%E0%A4%A8___Jeevan_Kosh_psisk4.mp4');
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
                      child: Text("सुपता पद्मंगस्थासन के फायदे",
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
                          "1. रक्तचाप, बांझपन और कब्ज के लिए चिकित्सीय",
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
                            "2. एथलीटों के लिए बढ़िया",
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
                          "3. वैज्ञानिक दर्द में मदद कर सकता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. प्रजनन प्रणाली को मजबूत बनाना",
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
                            "5. कोर की मांसपेशियां मजबूत बनती हैं",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सुपता पदंगुथासन के नुकसान",
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
                          "1. पैर और कूल्हे कमजोर",
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
                            "2. कंधे में चोट",
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
                          "3. हैमस्ट्रिंग या क्वाड्रिसेप्स पर चोट लगने से बचें",
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
                                "शवासन में योग चटाई पर लेट जाएं।  धीरे से पैर और पैर की उंगलियों को फैलाएं।  पैरों को एड़ियों के माध्यम से दबाएं।  साँस छोड़ते हुए, दाहिने घुटने को छाती तक ले आएं।  दाहिने तल पर खाली जगह पर एक पट्टा रखें।  हो सके तो पैर की अंगुली को दो अंगुलियों से पकड़ें।  अब दाएं पैर को छत की तरफ सीधा करने की कोशिश करें।  हाथ सीधे होंगे और कंधे फर्श पर दबाव डालेंगे।  बाएं पैर को फैलाएं और उसे आगे फैलाएं।  बाएं जांघ के ऊपरी हिस्से को बाएं हाथ से दबा सकते हैं।  दाएं पैर को फैलाकर हिंद पैर पर ज्यादा दबाव न डालें।  मुद्रा को कठिन बनाने के लिए, आप पैर को दाईं ओर झुका सकते हैं या मोड़ सकते हैं।  पैर को मोड़ने पर, बाएं पैर से 90 डिग्री का कोण बनाया जाएगा।  बाएं नितंब को इस दौरान पूरी तरह से जमीन के संपर्क में रहना चाहिए।  30 सेकंड के बाद पट्टा ढीला करें और पैर को जमीन पर लाएं।"),
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
                          "धीरे-धीरे नींद की पद्ंगुष्ठासन करने के लिए अभ्यास बढ़ाएं।  बेचैनी की स्थिति में इस आसन का अभ्यास न करें।  कभी भी कंधों या घुटनों पर दबाव न डालें।  मुद्रा से पहले वार्म अप करें ताकि कोर की मांसपेशियां सक्रिय हो जाएं।  यदि आपको कोई असुविधा या दर्द महसूस हो तो आसन का अभ्यास करना बंद कर दें।  अगर आप ये आसन पहली बार कर रहे हैं तो किसी योग गुरु की देखरेख में करें।",
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

class simhasana_trans extends StatefulWidget {
  simhasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _simhasana_transState();
  }
}

class _simhasana_transState extends State<simhasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016363/y2mate.com_-_Simhasana_Yoga_Pose_360p_snyy6x.mp4');
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
                      child: Text("सिम्हासन के फायदे",
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
                          "1. चेहरे और छाती में तनाव से राहत दिलाता है",
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
                            "2. चेहरे पर रक्त के परिसंचरण में सुधार करता है",
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
                          "3. नसों को उत्तेजित करके आपकी आंखों को स्वस्थ रखता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. पट्टिका को उत्तेजित करता है और बनाता है",
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
                            "5. गले में खराश, अस्थमा, और अन्य सांस की बीमारियों को रोकने में मदद करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सिम्हासन के नुकसान",
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
                          "1. पैर और कूल्हे कमजोर",
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
                            "2. कंधे में चोट",
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
                          "3. हैमस्ट्रिंग या क्वाड्रिसेप्स पर चोट लगने से बचें",
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
                                "पीठ सीधी रखें।  छाती खुली रखें।  आप यह सुनिश्चित करने के लिए पैरों की स्थिति को थोड़ा बदल सकते हैं कि आप दृढ़ता से बैठे हैं और संतुलन में हैं।"),
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
                          "बाहों को मोड़ें।",
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

class siddhasana_trans extends StatefulWidget {
  siddhasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _siddhasana_transState();
  }
}

class _siddhasana_transState extends State<siddhasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016421/%E0%A4%B8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%A7%E0%A4%BE%E0%A4%B8%E0%A4%A8_Siddhasana_Hindi_ml7r7t.mp4');
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
                      child: Text("सिद्धासन के फायदे",
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
                          "1. यह आसन कूल्हों, घुटनों और टखनों को फैलाता है",
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
                            "2. सिद्धासन प्रजनन अंगों की गतिविधियों को संतुलित करने में मदद करता है",
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
                          "3. यह यौन ऊर्जा को स्थिर करने में मदद करता है जो गहरी ध्यान के लिए फायदेमंद है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. यह आसन एकाग्रता और मन की स्पष्टता में मदद करता है",
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
                            "5. यह स्मृति, पाचन और मन के संकाय में सुधार करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सिद्धासन के नुकसान",
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
                          "1. अगर आपके घुटने में चोट है तो आपको इस सिद्धासन को करने से बचना चाहिए",
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
                            "2. अगर आपकी हाल ही में हिप सर्जरी हुई है तो आप इस आसन से बचें",
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
                          "3. यदि आपको कोई चिकित्सीय चिंता है तो इस आसन को करने से पहले आपको अपने डॉक्टर से बात करनी चाहिए",
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
                                "सबसे पहले दंडासन में बैठें। बाएं पैर को मोड़कर, उसकी एड़ी को गुदा और अवचेतन के बीच इस तरह दबाएं कि बाएं पैर का तलवा दाहिने पैर की जांघ को छुए। इसी तरह, दाहिने पैर को मोड़ें और इस तरह से अवचेतन (शीशान) के ऊपर उसकी एड़ी दबाएं। अब दोनों हाथों को ज्ञान मुद्रा में रखें और जालंधर को बाँध लें और अपनी दृष्टि को फोकल बनाएं। यह सिद्धासन का नाम है।"),
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
                          "गृहस्थों को अधिक समय तक इस आसन का अभ्यास नहीं करना चाहिए। सिद्धासन बल से नहीं करना चाहिए। कटिस्नायुशूल, यहां तक कि स्लिप डिस्क वाले व्यक्तियों को भी इसका अभ्यास नहीं करना चाहिए। अगर आपको घुटने में दर्द, जोड़ों में दर्द या कमर दर्द की शिकायत है, तो उन्हें भी इसका अभ्यास नहीं करना चाहिए। यहां तक कि बवासीर आदि गुदा रोगों से पीड़ित रोगियों को इसका अभ्यास नहीं करना चाहिए।",
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

class samakonasana_trans extends StatefulWidget {
  samakonasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _samakonasana_transState();
  }
}

class _samakonasana_transState extends State<samakonasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615302312/Samakonasana_ldkd5c.mp4');
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
                      child: Text("समकोणासन के फायदे",
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
                          "1. भीतरी जांघ की मांसपेशियों या हैमस्ट्रिंग को इस मुद्रा के माध्यम से उत्तेजित किया जाता है, जो आपकी आंतरिक जांघ को भी टोन करने में मदद करता है",
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
                            "2. आपके निचले पेट में रक्त परिसंचरण में सुधार होता है",
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
                          "3. अपने कूल्हे जोड़ों, पीठ के निचले हिस्से के जोड़ों आदि की मजबूती में बहुत उपयोगी मुद्रा",
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
                          "4. यह मुद्रा तनाव से राहत दिलाने में मदद करती है और अच्छे मानसिक स्वास्थ्य प्रदान करती है",
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
                            "5. यह शरीर को हार्मोन का एक अच्छा बढ़ावा देने में मदद करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("समकोणासन के नुकसान",
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
                          "1. इस आसन का अभ्यास खाली पेट या 5-6 घंटे के बाद किया जाना चाहिए, जब आप अपना भोजन ले चुके हों",
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
                            "2. गंभीर पीठ दर्द या चोट वाले लोगों को इस आसन से बचना चाहिए",
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
                          "3. पैर की समस्याओं वाले लोगों को पेशेवर मार्गदर्शन में इस आसन का अभ्यास करना चाहिए",
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
                                "सबसे पहले, जमीन या योग की चटाई पर बैठकर शुरुआत करें और पैरों को अपने सामने की ओर फैलाएं। सांस लेते समय कुछ सेकंड के लिए इस स्थिति को बनाए रखें। दूसरे, पैरों को बहुत धीरे-धीरे फैलाएं ताकि दोनों पैर एक सीधी रेखा बन जाएं। शरीर को सीधा रखना चाहिए। इस तरीके से एक मिनट या उससे कम समय तक रहें और फिर दोनों पैरों को वापस सामान्य स्थिति में लाएं।"),
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
                          "किसी भी गंभीर चोट या सर्जरी के मामले में, आपको अपने प्रशिक्षक को समस्या के बारे में बताना चाहिए और पेशेवर मार्गदर्शन में ही इस आसन का अभ्यास करना चाहिए। स्लिप डिस्क की समस्या वाले लोगों को इस आसन से बचना चाहिए। गर्भवती महिलाओं को विशेष रूप से इस आसन से बचना चाहिए।",
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

class shirshasana_trans extends StatefulWidget {
  shirshasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _shirshasana_transState();
  }
}

class _shirshasana_transState extends State<shirshasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016316/How_to_do_HEADSTAND_for_Beginners___Benefits_of_Headstand_Yoga_pose_Sirsasana___Hindi_fxtufa.mp4');
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
                      child: Text("शीर्षासन के फायदे",
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
                          "1. मस्तिष्क को शांत करता है और तनाव और हल्के अवसाद को दूर करने में मदद करता है",
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
                            "2. पिट्यूटरी और पीनियल ग्रंथियों को उत्तेजित करता है",
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
                          "3. हाथ, पैर और रीढ़ को मजबूत करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. फेफड़ों को मजबूत बनाता है",
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
                            "5. पाचन में सुधार करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("शीर्षासन के नुकसान",
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
                          "1. पूरे शरीर को अंतिम मुद्रा में लंबवत रखें; आगे, पीछे या बग़ल में झुकाव न करें",
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
                            "2. अन्य आसन करने के बाद ही इस योग मुद्रा का अभ्यास करना चाहिए",
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
                          "3. प्राणायाम और ध्यान योग मुद्रा से पहले इसका अभ्यास करें",
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
                                "हेडस्टैंड प्रदर्शन करने के लिए, सबसे पहले, चटाई को फैलाएं और वज्रासन की स्थिति में पहुंचें। फिर, दोनों हाथों की अंगुलियों को परस्पर मिलाते हुए आगे की ओर झुकें और हाथों को जमीन पर रखें। अब सिर को हाथों के बीच में रखें और जमीन के करीब रखें। फिर पैरों को धीरे-धीरे उठाएं और सीधा करें। इस मामले में, सिर पूरी तरह से सीधा हो���ा चाहिए। कुछ सेकंड के लिए इस मुद्रा में बने रहें और सामान्य गति से सांस लेते रहें। फिर सांस छोड़ते हुए पैरों को नीचे लाएं और धीरे-धीरे सामान्य अवस्था में लौट आएं। शुरू में इस आसन को दो से तीन बार करें।"),
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
                          "कूल्हे कंधों से परे जाते हैं। अपनी कोहनी को एक दूसरे से बहुत दूर रखें। सिर को गलत स्थिति में रखना - या तो माथे की ओर या बहुत दूर सिर के पीछे की ओर। सतह के बहुत कठिन होने पर मुद्रा का अभ्यास करना। बहुत जल्दी या बहुत उथला साँस लेना।",
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

class setusarvangasana_trans extends StatefulWidget {
  setusarvangasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _setusarvangasana_transState();
  }
}

class _setusarvangasana_transState extends State<setusarvangasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016102/Yoga__Setu_Bandhasana__%E0%A4%AA%E0%A5%87%E0%A4%9F_%E0%A4%95%E0%A5%80_%E0%A4%9A%E0%A4%B0%E0%A5%8D%E0%A4%AC%E0%A5%80_%E0%A4%95%E0%A4%BE%E0%A4%9F_%E0%A4%A6%E0%A5%87%E0%A4%97%E0%A4%BE_%E0%A4%B8%E0%A5%87%E0%A4%A4%E0%A5%81%E0%A4%AC%E0%A4%82%E0%A4%A7_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%AF%E0%A4%BE%E0%A4%A8%E0%A4%BF_%E0%A4%AC%E0%A5%8D%E0%A4%B0%E0%A4%BF%E0%A4%9C_%E0%A4%AA%E0%A5%8B%E0%A5%9B___Bridge_Pose___Jeevan_Kosh_frtzqp.mp4');
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
                      child: Text("सेतु बंध सर्वंगासन के फायदे",
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
                          "1. छाती, गर्दन और रीढ़ को खींचता है",
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
                            "2. मस्तिष्क को शांत करता है और तनाव और हल्के अवसाद को कम करने में मदद करता है",
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
                          "3. पेट के अंगों, फेफड़ों और थायरॉयड को उत्तेजित करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. थके हुए पैरों को फिर से जीवंत करता है",
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
                            "5. रजोनिवृत्ति के लक्षणों से राहत दिलाने में मदद करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सेतु बंध सर्वांगासन के नुकसान",
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
                          "1. गर्दन दर्द से पीड़ित होने पर इस मुद्रा को नहीं करना चाहिए",
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
                            "2. पीठ की चोट में, इससे बचना चाहिए",
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
                          "3. अगर घुटने में दर्द हो रहा हो तो योग मुद्रा को छोड़ दें",
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
                                "योग चटाई पर अपनी पीठ के बल लेटें। सांस की गति सामान्य रखें। इसके बाद हाथों को साइड में रखें। अब धीरे-धीरे अपने पैरों को घुटनों से मोड़ें और कूल्हों के पास लाएं। जितना हो सके फर्श से कूल्हों को ऊपर उठाएं। हाथ जमीन पर रहेंगे। सांस को कुछ देर रोककर रखें। इसके बाद, जमीन पर साँस छोड़ते हुए वापस लौटें। पैरों को सीधा करें और आराम करें। 10-15 सेकंड आराम करने के बाद फिर से शुरू करें।"),
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
                          "गर्दन की चोट, डिस्क की समस्या वाले लोग इसे उचित देखरेख में करें",
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

class shalabhasana_trans extends StatefulWidget {
  shalabhasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _shalabhasana_transState();
  }
}

class _shalabhasana_transState extends State<shalabhasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016108/y2mate.com_-_Yoga_with_Modi_Shalabhasana_Hindi_1080p_xms7fv.mp4');
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
                      child: Text("शलभासन के फायदे",
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
                          "1. कटिस्नायुशूल और पीठ दर्द में मददगार",
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
                            "2. पेट, कूल्हों, कमर और जांघों के आसपास अनावश्यक वसा से छुटकारा पाने में मदद करता है",
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
                          "3. मजबूत और पीठ की मांसपेशियों और रीढ़ को लचीलापन जोड़ता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. सर्वाइकल स्पॉन्डिलाइटिस और रीढ़ की हड्डी की बीमारियों का इलाज",
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
                            "5. आत्मविश्वास का विकास करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("शलभासन के नुकसान",
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
                          "1. गंभीर पीठ की समस्या वाले लोगों को धीरे-धीरे मुद्रा का अभ्यास करना चाहिए",
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
                            "2. यदि आप कूल्हों या पीठ में दर्द का एक उन्नत गठिया है, तो इस मुद्रा का अभ्यास न करें",
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
                          "3. गर्भवती महिलाओं को इस मुद्रा से पूरी तरह बचना चाहिए",
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
                                "दोनों पैरों को सीधा और घुटनों पर एक साथ रखें। जमीन पर चिन। जमीन पर दबाने वाले हथेलियां। पंजे पीछे की ओर इशारा करते हुए।"),
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
                          "घुटनों को मोड़ें। पैरों के बीच दूरी रखें। माथे को जमीन पर स्पर्श करें",
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

class sukhasana_trans extends StatefulWidget {
  sukhasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _sukhasana_transState();
  }
}

class _sukhasana_transState extends State<sukhasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615015913/Calm_Down_In_3_Minutes_With_Sukhasana___Easiest_Yoga_Pose___Fit_Tak_naqfpy.mp4');
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
                      child: Text("सुखासन के फायदे",
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
                          "1. शारीरिक और मानसिक संतुलन बनाता है",
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
                            "2. तनाव और चिंता को कम करने में सहायक",
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
                          "3. कठोर शरीर वाले लोगों के लिए उत्कृष्ट",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. एक प्रभावी ध्यान अभ्यास प्राप्त करने के लिए एकाग्रता में सुधार",
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
                            "5. टखने, घुटने और कूल्हे के जोड़ों में लचीलापन बनाता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("सुखासन के नुकसान",
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
                          "1. घुटने की चोट के मामले में इसका अभ्यास नहीं किया जाना चाहिए",
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
                            "2. कटिस्नायुशूल के मामले में बचें",
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
                          "3. यह त्रिक बीमारियों में भी अभ्यास नहीं किया जाना चाहिए",
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
                                "शरीर के सामने पैरों को सामने की ओर करके बैठें। बाएं पैर को दाहिनी जांघ के नीचे मोड़ो। फिर दाएं पैर को बाईं जांघ के नीचे रखें। एक आरामदायक स्थिति में अपने सिर, गर्दन और रीढ़ को सीधा रखें। अपने हाथों को या तो अपने घुटनों पर या अपनी गोद में रखें। अपनी आँखें बंद करें। अपने पूरे शरीर को आराम दें"),
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
                          "ध्यान रखें कि भले ही आपके कूल्हे सूज गए हों या किसी के कूल्हों में चोट लगी हो, इस आसन को न करें। स्लिप डिस्क की समस्या होने पर भी यह आसन नहीं करना चाहिए। यदि कोई गर्भवती महिला इस आसन को करना चाहती है, तो उन्हें पहले अपने डॉक्टर या विशेषज्ञों से सलाह लेनी चाहिए। यदि डॉक्टर आसन करने की सलाह देते हैं, तो यह आसन किया जाना चाहिए। यदि आपको जमीन पर बैठने में परेशानी होती है, तो आप बैठने के लिए कुशन या तकिया लगा सकते हैं। और दीवार के सहारे बैठें।",
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

class tadasana_trans extends StatefulWidget {
  tadasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _tadasana_transState();
  }
}

class _tadasana_transState extends State<tadasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614684392/as1_cwtwin.mp4https://res.cloudinary.com/dreezne3c/video/upload/v1614977444/PM_Modi_shares_animated_video_of_Tadasana_promotes_yoga_kqaspn.mp4');
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
                      child: Text("ताड़ासन के फायदे",
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
                          "1. यह आपकी एड़ियों, जांघों और जोड़ों के लचीलेपन को बढ़ाने में मदद करता है",
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
                            "2. यह आपके कूल्हों और पेट को टोन कर सकता है और आपकी मांसपेशियों की गतिविधियों पर नियंत्रण पाने में मदद करता है",
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
                          "3. यह भी माना जाता है कि अगर यह प्रारंभिक वर्षों के दौरान नियमित रूप से अभ्यास किया जाए तो यह आपकी ऊंचाई बढ़ाने में मदद कर सकता है",
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
                            "4. ताड़ासन आपके तंत्रिका तंत्र को मजबूत करता है और आपके श्वसन और पाचन कार्यों को नियंत्रित करता है",
                            textDirection: TextDirection.ltr,
                          )),
                    ),
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. तड़ासन का सबसे बड़ा लाभ यह है कि यह आपकी मुद्रा को सही करने में मदद करता है और आपकी रीढ़ को अधिक फुर्तीला बनाकर आपके संतुलन को बेहतर बनाता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("ताड़ासन के नुकसान",
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
                          "1. यदि आप अनिद्रा से पीड़ित हैं तो इसका अभ्यास न करें",
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
                            "2. सिरदर्द की समस्या वाले लोगों को पहाड़ी मुद्रा का अभ्यास नहीं करना चाहिए",
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
                          "3. अगर आपका रक्तचाप कम है तो इसे न करें",
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
                                "इसके लिए सबसे पहले आप खड़े हो जाएं और अपनी कमर और गर्दन को सीधा रखें। अब अपना हाथ सिर के ऊपर रखें और सांस लेते हुए धीरे-धीरे पूरे शरीर को खींचें। पैर के अंगूठे से पैर तक खिंचाव महसूस करें। इस अवस्था को कुछ समय तक रखें और सांस छोड़ें। फिर साँस छोड़ते हुए, धीरे-धीरे अपने हाथों और शरीर को पहली स्थिति में लाएँ। इस तरह एक चक्र पूरा हुआ। कम से कम तीन से चार बार इसका अभ्यास करें।"),
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
                          "यदि आप किसी भी रक्त को पतला करने वाली दवाएँ लेते हैं या रक्तचाप कम है, तो बिना डॉक्टर की सलाह के इस मुद्रा को करने से बचें।",
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

class tittibhasana_trans extends StatefulWidget {
  tittibhasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _tittibhasana_transState();
  }
}

class _tittibhasana_transState extends State<tittibhasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615298564/y2mate.com_-_%E0%A4%9F%E0%A4%9F%E0%A4%9F%E0%A4%AD%E0%A4%B8%E0%A4%A8Tittibhasana%E0%A4%95%E0%A4%B0%E0%A4%A8_%E0%A4%95_5_%E0%A4%A4%E0%A4%B0%E0%A4%95_titibasana_in_hindititibasana_for_beginnerstitibasana_yoga_480p_zxeqnu.mp4');
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
                      child: Text("टिटिभासन के फायदे",
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
                          "1. टिटिभासना (जुगनू पोज) आपकी कलाई को मजबूत बनाने के साथ-साथ भुजाओं की ताकत में सुधार करता है",
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
                            "2. यह पेट के क्षेत्र को कसता है और टोन करता है",
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
                          "3. अपनी पीठ के धड़, आंतरिक कण्ठ और हैमस्ट्रिंग को स्ट्रेच करता है",
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
                            "4. योग मुद्रा भी संतुलन की समग्र भावना लाने में मदद करती है और कोर ताकत में सुधार करती है।",
                            textDirection: TextDirection.ltr,
                          )),
                    ),
                  ]),
                  Row(children: [
                    Flexible(
                        fit: FlexFit.tight,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                          child: Text(
                            "5. जुगनू पोज़ पीछे के धड़ को और आंतरिक किराने को एक अच्छा खिंचाव देता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("तितिभासन के नुकसान",
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
                          "1. सर्जिकल प्रक्रिया से उबरने के दौरान इसे पूरा न करें|",
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
                            "2. गर्भवती महिलाओं को यह आसन नहीं करना चाहिए।",
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
                          "3. इस मुद्रा से दूर रहने के लिए कम रक्त स्त्राव वाले लोगों को चाहिए",
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
                                "आप फर्श पर बैठकर, नब्बे डिग्री के कोण पर फैले पैरों, प्रत्येक एड़ी को एक ब्लॉक पर ऊंचा करके, और अपनी हथेलियों को अपने पैरों के बीच फर्श पर दबाकर इस मुद्रा को अनुमानित कर सकते हैं।"),
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
                          "अगर आपको कंधे, कोहनी, कलाई या पीठ के निचले हिस्से में चोट है तो इस मुद्रा से बचें। यह एक उन्नत मुद्रा है, इसलिए यह सुनिश्चित करने के लिए उचित निर्देश और सलाह लें कि तैयारी के लिए क्या उपयोगी होगा। इसका अभ्यास वहीं करें जहाँ मुद्रा से बाहर आने पर यह सुरक्षित रहेगा।",
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

class trikonasana_trans extends StatefulWidget {
  trikonasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _trikonasana_transState();
  }
}

class _trikonasana_transState extends State<trikonasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977568/y2mate.com_-_Trikonasana_Yoga_for_good_Metabolism_Digestion_%E0%A4%A4%E0%A4%B0%E0%A4%95%E0%A4%A3%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8_%E0%A4%95_%E0%A4%A4%E0%A4%B0%E0%A4%95_%E0%A4%94%E0%A4%B0_%E0%A4%AB%E0%A4%AF%E0%A4%A6_Jeevan_Kosh_480p_m4j35y.mp4');
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
                      child: Text("त्रिकोणासन के फायदे",
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
                          "1. स्ट्रेच और जांघों, घुटनों और टखनों को मजबूत करता है",
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
                            "2. कूल्हों, कमर, हैमस्ट्रिंग और बछड़ों को खींचता है; कंधे, छाती और रीढ़",
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
                          "3. पेट के अंगों को उत्तेजित करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. तनाव दूर करने में मदद करता है",
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
                            "5. पाचन में सुधार करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("त्रिकोणासन के नुकसान",
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
                          "1. इस आसन का अभ्यास करते समय शरीर को ज्यादा गर्म न करें क्योंकि इससे अनावश्यक दर्द या चोट लग सकती है",
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
                            "2. यदि गर्दन ऊपर की दिशा में चोट करने लगे, तो इसे थोड़ा कम करें",
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
                          "3. गर्दन, पीठ या कंधों में तेज दर्द की स्थिति में इस आसन का अभ्यास करने से बचें",
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
                                "अपने पैरों को अलग करके सीधे खड़े हो जाएं। साँस लेना। ...साँस छोड़ना। ... इसके अलावा, अपने बाएं पैर को अपने बाएं पैर के साथ तब तक नीचे स्लाइड करें जब तक आपकी उंगलियां आपके टखने पर न हों। इस बिंदु पर, आपका दाहिना हाथ क्षैतिज होना चाहिए क्योंकि आपका सिर बाईं ओर झुका हुआ है। अपने घुटनों और कोहनियों के साथ मुद्रा को सीधा रखें। ... श्वास।"),
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
                          "स्लिप डिस्क या कमर दर्द से पीड़ित लोगों को इस आसन को करने से बचना चाहिए। किसी भी सर्जरी वाले लोगों को इस आसन को करने से पहले एक चिकित्सक से परामर्श करना चाहिए। इस आसन को करने से पहले गर्भवती महिलाओं को एक चिकित्सक से परामर्श करना चाहिए। मासिक धर्म के दौरान इस आसन को करने से बचना चाहिए।",
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

class trivikramasana_trans extends StatefulWidget {
  trivikramasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _trivikramasana_transState();
  }
}

class _trivikramasana_transState extends State<trivikramasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615103798/standing_split_%E0%A4%9C%E0%A4%B2%E0%A5%8D%E0%A4%A6%E0%A5%80_%E0%A4%B8%E0%A5%80%E0%A4%96%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%A8%E0%A4%AF%E0%A4%BE_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BE___standing_split_kaise_sikhe___baaghi_split_kaise_kare_zf7ezj.mp4');
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
                      child: Text("त्रिविक्रमासन के फायदे",
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
                          "1. पैर, घुटने, निचले पैर, हाथ और छाती को मजबूत करता है।",
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
                            "2. खिंचाव और कूल्हों, क्रॉच, हैमस्ट्रिंग, बछड़ों, कंधों, छाती और रीढ़ को खोलता है।",
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
                          "3. मानसिक और शारीरिक संतुलन में वृद्धि",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. आत्मसात में सुधार",
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
                            "5. घबराहट, चिंता, पीठ की पीड़ा और कटिस्नायुशूल को कम करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("त्रिविक्रमासन के नुकसान",
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
                          "1. यह सुनिश्चित करने के लिए भी महत्वपूर्ण है कि आसन करने से पहले आप शौच करें और पेट पूरी तरह से खाली हो।",
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
                            "2. अगर आपके पैरों और घुटनों में दर्द है, तो इस आसन को न करें।",
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
                          "3. यदि आप किसी प्रकार की पीठ या रीढ़ की समस्या से पीड़ित हैं, तो इस आसन को न करें।",
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
                                "सबसे पहले, आपको एक योग की उलझन पर दंडासन में बैठना होगा, ताकि खारा विभाजन हो। इसके बाद श्वास लें और अपने पैर को 90 डिग्री तक ऊपर उठाएं और सुनिश्चित करें कि यह आपका बायां पैर है। अपने दाहिने हाथ से अपने पैर के अंगूठे को पकड़ें और उसी समय अपनी बाईं जांघ को जमीन की ओर धकेलें। फिर अपने बाएं पैर को आगे की ओर और अपने कंधे को आगे की ओर धकेलें। अब बाएं कूल्हे को ध्यान से मोड़ें। अपने दोनों हाथों से अपने पैरों को धीरे-धीरे दबाएँ। शुरुआती स्तर पर इसे 2-4 सांसों की तरह करें। अपनी पीठ के बल लेट जाएं और अपने पैरों और कंधों को फैलाते रहें।"),
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
                          "इस आसन को कटिस्नायुशूल, कूल्हे की समस्याओं या हर्निया वाले लोगों द्वारा नहीं किया जाना चाहिए। तनावपूर्ण मांसपेशियों और फटे स्नायुबंधन को रोकने के लिए, इस आसन का प्रयास नहीं किया जाना चाहिए जब तक कि शरीर बहुत लचीला न हो।",
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

class tulasana_trans extends StatefulWidget {
  tulasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _tulasana_transState();
  }
}

class _tulasana_transState extends State<tulasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977567/How_To_Do_Tolasana_Scale_pose___LIFTED_LOTUSE_POSE___kautilya_Verma___Utthita_padmasana_q5wty3.mp4');
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
                      child: Text("तुलसाना के फायदे",
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
                          "1. तुलासन आपकी भुजाओं, कलाई और शरीर के ऊपरी हिस्से को मजबूत बनाता है।",
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
                            "2. आपके कंधों को मजबूत बनाता है।",
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
                          "3. यह मांसपेशियों को शांत करता है और मन को शांत करता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. संतुलन की भावना को बढ़ाता है।",
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
                            "5. पेट के कसने और बाद में, एक कठोर पेट को शामिल करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("तुलसाना के नुकसान",
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
                          "1. इस आसन को न करें अगर आपको चोट लगती है तो यह आपकी बाहों या कलाई में होता है।",
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
                            "2. यदि आप कड़े घुटने और टखने के जोड़ों से पीड़ित हैं, तो इस मुद्रा से दूर रहें।",
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
                          "3. जो लोग जांघों और नितंबों में तंग मांसपेशियों से पीड़ित हैं, उन्हें इस मुद्रा को करना बहुत मुश्किल हो सकता है।",
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
                                "पद्मासन में स्थित अपने पैरों के साथ फर्श पर बैठें। अपने हाथों को फर्श के विपरीत रखें। अपनी भुजाओं को कसकर सक्रिय करें और अपने शरीर को उठाएं। अपने शरीर के भार को अपनी भुजाओं पर रखें। आपके टकटकी की दिशा को आप की ओर से तय किया जाना चाहिए। मूल पद"),
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
                          "जो लोग फ्रोजन शोल्डर, रोटेटर कफ की चोट या बीमारियों, शोल्डर बर्साइटिस, ऑस्टियोआर्थराइटिस, डिसलोकेटेड शोल्डर, फ्रैक्चर कॉलरबोन या आर्म एंड शोल्डर क्षेत्र में दर्द जैसी स्वास्थ्य स्थितियां हैं, उन्हें स्केल पोज से बचना चाहिए।",
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

class upavishta_konasana_trans extends StatefulWidget {
  upavishta_konasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _upavishta_konasana_transState();
  }
}

class _upavishta_konasana_transState extends State<upavishta_konasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977506/y2mate.com_-_Upavishtha_Konasana_Yoga_Kidneys_%E0%A4%95_DETOX_%E0%A4%95%E0%A4%B0%E0%A4%A4_%E0%A4%B9_%E0%A4%89%E0%A4%AA%E0%A4%B5%E0%A4%B7%E0%A4%A0_%E0%A4%95%E0%A4%A3%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8_%E0%A4%95_%E0%A4%A4%E0%A4%B0%E0%A4%95_%E0%A4%B5_%E0%A4%AB%E0%A4%AF%E0%A4%A6_Jeevan_Kosh_480p_ks2xbf.mp4');
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
                      child: Text("उपनिषद कोणासन के फायदे",
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
                          "1. पैरों के इनसाइड और बैक को स्ट्रेच करता है।",
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
                            "2. पेट के अंगों को उत्तेजित करता है",
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
                          "3. रीढ़ को मजबूत बनाता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. मस्तिष्क को शांत करता है।",
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
                            "5. कण्ठमाला को मुक्त करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("उपनिषद कोणासन के नुकसान",
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
                          "1. इस आसन को करने से बचें यदि आपके कमर या हैमस्ट्रिंग में खिंचाव या आंसू हैं, या यदि आप गर्भवती हैं, तो पीठ के निचले हिस्से में चोट लगी है, या हर्नियेटेड डिस्क है।",
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
                            "2. यदि आपको पीठ के निचले हिस्से में दर्द हो, तो इस आसन को करते समय एक कंबल या एक ब्लॉक पर बैठें।",
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
                                "उपनिषद कोणासन कई शुरुआती लोगों के लिए एक कठिन फॉरवर्ड मोड़ है। यदि आपको थोड़ा आगे झुकने में परेशानी होती है, तो यह आपके घुटनों को थोड़ा मोड़ने के लिए स्वीकार्य है। तुम भी पतले लुढ़का कंबल पर अपने घुटनों का समर्थन कर सकते हैं; लेकिन याद रखें, जैसे ही आप आगे की ओर झुकते हैं, यह अभी भी महत्वपूर्ण है कि घुटने की टोपी छत की ओर इशारा करते रहें।"),
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
                          "खाली पेट इसका अभ्यास करें। कम से कम 4 या 6 घंटे के अभ्यास से पहले खाएं। यदि आपको अपने हैमस्ट्रिंग में आंसू या खिंचाव है तो इसका अभ्यास करने से बचें। अगर आपको पीठ के निचले हिस्से में चोट लगी है तो मोटे या मुड़े हुए कंबल पर बैठें।",
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

class chakrasana_trans extends StatefulWidget {
  chakrasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _chakrasana_transState();
  }
}

class _chakrasana_transState extends State<chakrasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977432/Chakrasana_for_Inner_Strength__%E0%A4%85%E0%A4%82%E0%A4%A6%E0%A4%B0%E0%A5%82%E0%A4%A8%E0%A5%80_%E0%A4%A4%E0%A4%BE%E0%A4%95%E0%A4%A4_%E0%A4%95%E0%A5%87_%E0%A4%B2%E0%A4%BF%E0%A4%8F_%E0%A4%95%E0%A4%B0%E0%A5%87%E0%A4%82_%E0%A4%9A%E0%A4%95%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%9C%E0%A4%BE%E0%A4%A8%E0%A5%87%E0%A4%82_%E0%A4%AB%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87___Yoga___Jeevan_Kosh_k0ozh5.mp4');
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
                      child: Text("चक्रासन के फायदे",
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
                          "1. छाती का विस्तार होता है और फेफड़ों को अधिक ऑक्सीजन मिलती है - यह अस्थमा के रोगियों के लिए विशेष रूप से फायदेमंद है।",
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
                            "2. यह शरीर में तनाव और तनाव को कम करता है।",
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
                          "3. आँखों की रोशनी तेज करता है",
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
                            "4. यह आसन पीठ को मजबूत बनाने में मदद करता है और रीढ़ की लोच को बढ़ाता है",
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
                            "5. यह अंतःस्रावी ग्रंथियों को उत्तेजित करता है और शरीर के चयापचय को एक इष्टतम स्तर पर बनाए रखता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("चक्रासन के नुकसान",
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
                          "1. बाहों, कूल्हों, कंधों या पीठ में लगातार दर्द या चोट",
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
                            "2. असंतुलित रक्तचाप",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. हर्निया के तीव्र या बाद के चरणों से पीड़ित चिकित्सक",
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
                            "4. कलाई या गर्दन पर कोई चोट",
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
                                "अपने पैरों को अपने घुटनों पर मोड़ें और सुनिश्चित करें कि आपके पैर फर्श पर मजबूती से रखे हुए हैं। अपनी हथेलियों को अपने कानों के बगल में रखें, आगे की ओर इशारा करते हुए। । अपने सिर को धीरे से पीछे गिरने के लिए और अपनी गर्दन को आराम से रखने के लिए। अपने शरीर के वजन को समान रूप से अपने चार अंगों के बीच वितरित करें। बढ़ते तरीके: शरीर को ऊपर उठाते समय श्वास लें।"),
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
                          "यदि आपको लगातार सिरदर्द होता है या उच्च रक्तचाप से पीड़ित हैं, तो आपको चक्रासन नहीं करना चाहिए। चक्रासन कोहनी दर्द, स्लिप डिस्क, सिर का चक्कर, डायरिया हर्निया, निम्न रक्तचाप और दिल की समस्याओं के लिए भी अनुकूल है। गर्भवती महिलाओं को इस आसन को नहीं करना चाहिए।",
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

class urdhva_mukha_shvanasana_trans extends StatefulWidget {
  urdhva_mukha_shvanasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _urdhva_mukha_shvanasana_transState();
  }
}

class _urdhva_mukha_shvanasana_transState
    extends State<urdhva_mukha_shvanasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1614977347/Yoga_for_relaxation___%E0%A4%8A%E0%A4%B0%E0%A5%8D%E0%A4%A7%E0%A5%8D%E0%A4%B5_%E0%A4%AE%E0%A5%81%E0%A4%96_%E0%A4%B6%E0%A5%8D%E0%A4%B5%E0%A4%BE%E0%A4%A8%E0%A4%BE%E0%A4%B8%E0%A4%A8___Urdhva_Mukha_Svanasana_Health_Benefits___Boldsky_nxim9d.mp4');
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
                      child: Text("उर्दू मुखा शवासन के फायदे",
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
                          "1. छाती को खोलता है और फैलाता है (पेक्टोरलिस मेजर मसल)।",
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
                            "2. पीछे के डेल्टा को मजबूत करता है और पूर्वकाल के डेल्टा को फैलाता है।",
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
                          "3. आँखों की रोशनी तेज करता है",
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
                            "4. पीठ की मांसपेशियों को मजबूत करता है, विशेष रूप से इरेक्टर स्पाइना को, जो आपकी रीढ़ को पीछे की ओर झुकता है।",
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
                            "5. क्वाड्स को मजबूत करता है, जो आपके घुटने के जोड़ों को सीधा करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("उर्दू मुखा शवासन के नुकसान",
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
                          "1. अगर आपकी गर्दन में चोट है, तो आमतौर पर मुद्रा में देखने के बजाय सीधे आगे देखना सबसे अच्छा है।",
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
                            "2. यदि आपको स्कोलियोसिस है, तो यह मुद्रा कठिन या दर्दनाक हो सकती है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. यदि आप कशेरुक या डिस्क की चोट (जैसे फिसल गई डिस्क) से जुड़े हैं, तो सावधानी से आगे बढ़ें।",
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
                            "4. यदि आपको स्पॉन्डिलाइटिस है, तो सावधानी से आगे बढ़ें। यदि आप दर्द महसूस करते हैं, तो एक ब्रेक लें",
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
                                "इस मुद्रा में आने पर आपके कंधों पर लटकने की प्रवृत्ति हो सकती है, जैसे कि आपके कंधे आपके कान के करीब हों, और आपकी गर्दन कछुए की तरह बाहर की ओर निकले। आपको यह ध्यान रखना चाहिए कि आपके कंधे पीछे की ओर खींचे जाने चाहिए और जैसे ही आप अपने कंधे ब्लेड को अपने टेलबोन की ओर खींचते हैं। यदि आप इसे होशपूर्वक नहीं कर सकते हैं, तो अपने हाथों को आराम करने के लिए ब्लॉकों का उपयोग करें। अपने कंधे ब्लेड स्वचालित रूप से जगह में हो जाएगा।"),
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
                          "स्थिति को अपनी हथेलियों और कंधों पर वजन के एक वितरित संतुलन की आवश्यकता होती है। अगर आपको कंधे में चोट, पीठ में चोट या मोच आ गई है, तो इस मुद्रा से दूर रहना सबसे अच्छा है। गर्भवती महिलाओं को चिकित्सक से निर्देश के बिना स्थिति का प्रयास नहीं करना चाहिए।",
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

class ushtrasana_trans extends StatefulWidget {
  ushtrasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _ushtrasana_transState();
  }
}

class _ushtrasana_transState extends State<ushtrasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615103955/Ustrasana_Camel_Pose__Yoga_for_whole_Body_Strength_%E0%A4%AA%E0%A5%81%E0%A4%B0%E0%A5%87_%E0%A4%B6%E0%A4%B0%E0%A5%80%E0%A4%B0_%E0%A4%95%E0%A5%8B_%E0%A4%AE%E0%A5%9B%E0%A4%AC%E0%A5%82%E0%A4%A4%E0%A5%80_%E0%A4%A6%E0%A5%87%E0%A4%A4%E0%A4%BE_%E0%A4%B9%E0%A5%88_%E0%A4%89%E0%A4%B7%E0%A5%8D%E0%A4%9F%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8_Jeevan_Kosh_osh2x1.mp4');
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
                      child: Text("उष्ट्रासन के फायदे",
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
                          "1. जांघों पर वसा कम करता है।",
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
                            "2. कूल्हों को खोलता है, गहरे कूल्हे फ्लेक्सर्स को खींचता है।",
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
                          "3. स्ट्रेच और कंधों और पीठ को मजबूत करता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. पेट क्षेत्र का विस्तार करता है, पाचन और उन्मूलन में सुधार करता है।",
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
                            "5. मुद्रा में सुधार।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("उष्ट्रासन के नुकसान",
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
                          "1. पूरे अभ्यास में सामान्य रूप से सांस लें।",
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
                            "2. उष्ट्रासन का अभ्यास करने के बाद शुरुआती कुछ समय के लिए चक्कर आ सकता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. उच्च या निम्न रक्तचाप से पीड़ित लोगों को इस आसन का अभ्यास करने से बचना चाहिए।",
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
                            "4. अनिद्रा से पीड़ित लोगों को इस आसन से बचना चाहिए।",
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
                                "एक चटाई पर एक घुटने की स्थिति मान लें और घुटनों और पैर की उंगलियों (मुड़ी हुई) पर शरीर का समर्थन करें। धीरे-धीरे, पीछे की ओर झुकें, और हाथों को पीछे ले जाएं। हथेलियों को जमीन पर रखें, उंगलियों के साथ बाहर की ओर और पैर की उंगलियों को इंगित करें। । सीधे हाथ, आँखें खुली, एक बिंदु पर टकटकी लगाओ।"),
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
                          "उच्च रक्तचाप और गंभीर थकान वाले लोगों को इस मुद्रा से बचना चाहिए। यदि आपके पास रीढ़ से संबंधित कोई भी स्थिति है, तो रीढ़ को झुकने के बजाय पूरे रीढ़ में विस्तार बनाए रखना सुनिश्चित करें।",
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

class utkatasana_trans extends StatefulWidget {
  utkatasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _utkatasana_transState();
  }
}

class _utkatasana_transState extends State<utkatasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615104130/y2mate.com_-_Chair_Pose_Yoga_Asana_Utkatasana_in_Hindi_Yoga_For_Weight_Loss_Yoga_For_Beginners_1080p_pklwdn.mp4');
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
                      child: Text("उत्कटासन के फायदे",
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
                          "1. टखनों, जांघों, पिंडलियों और रीढ़ को मजबूत बनाता है",
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
                            "2. स्ट्रेच कंधे और छाती",
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
                          "3. फ्लैट पैर कम करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. पेट के अंगों और डायाफ्राम को उत्तेजित करता है",
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
                            "5. हृदय की गति को बढ़ाता है, संचार और चयापचय प्रणालियों को उत्तेजित करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("उत्कटासन के नुकसान",
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
                          "1. यदि आपको निम्न रक्तचाप या सिरदर्द है तो इस आसन का अभ्यास न करें।",
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
                            "2. अगर आप हाल ही में अपने पैर या पैर में चोट लगी है तो इस आसन से बचें।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. पीठ के मुद्दों या कूल्हे की समस्याओं से ग्रस्त लोगों को उत्कटासन का अभ्यास करने से बचना चाहिए।",
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
                            "4. अनिद्रा से पीड़ित लोगों को इस आसन से बचना चाहिए।",
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
                                "ताड़ासन में खड़े रहें। श्वास; अपने हाथों को अपनी छाती के सामने फैलाएं और इसे अपने सिर के किनारों से ऊपर ले जाएं। श्वास; घुटनों को मोड़ें, अपने श्रोणि को नीचे धकेलें, और महसूस करें कि आप एक काल्पनिक कुर्सी पर बैठे हैं। जब तक आप अपने हाथों को सीधा और फैलाकर रख सकते हैं तब तक मुद्रा को बनाए रखें। श्वास लें और मूल स्थिति में आएं।"),
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
                          "उच्च रक्तचाप वाले लोगों को हथियार उठाने से बचना चाहिए और अपनी हथेलियों को कूल्हों को पकड़कर रखना चाहिए। घुटने की स्थिति वाले लोगों को अपने घुटनों को बहुत अधिक नहीं झुकना चाहिए। एक दीवार के खिलाफ झुकाव के साथ मुद्रा ले सकते हैं। जो लोग फ्लैट पैर वाले हैं, उन्हें अपने पैर की उंगलियों को कर्ल करना चाहिए।",
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

class uttanasana_trans extends StatefulWidget {
  uttanasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _uttanasana_transState();
  }
}

class _uttanasana_transState extends State<uttanasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615104451/%E0%A4%89%E0%A4%A4%E0%A5%8D%E0%A4%A4%E0%A4%BE%E0%A4%A8%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BE_%E0%A4%AB%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87_%E0%A4%94%E0%A4%B0_%E0%A4%B8%E0%A4%BE%E0%A4%B5%E0%A4%A7%E0%A4%BE%E0%A4%A8%E0%A5%80__Standing_Forward_Bend__Uttanasana_ypc5ot.mp4');
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
                      child: Text("उत्तानासन के फायदे",
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
                          "1. कूल्हों, हैमस्ट्रिंग और बछड़ों को खींचता है।",
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
                            "2. जांघों और घुटनों को मजबूत करता है।",
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
                          "3. आपकी रीढ़ को मजबूत और लचीला बनाए रखता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. तनाव, चिंता, अवसाद और थकान को कम करता है।",
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
                            "5. मन को शांत करता है और नसों को शांत करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("उत्तानासन के नुकसान",
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
                          "1. उत्तानासन का अभ्यास करने से पहले कोई भोजन न करें।",
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
                            "2. अभ्यास न करें, यदि आप ग्लूकोमा या कटिस्नायुशूल से पीड़ित हैं।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. गर्भवती महिलाओं को उत्तानासन का अभ्यास नहीं करना चाहिए।",
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
                                "आपको याद रखना चाहिए कि कभी भी अपने आप को बहुत दूर न धकेलें अगर आप आगे की ओर झुकते हुए सहज नहीं हैं। जब आप खुले हों तो श्वास लें। मोड़ने के लिए श्वास लें। अपनी पीठ को उभारें। उत्तानासन करते समय पैर का झुकाव बिल्कुल ठीक है। अपनी गर्दन या पीठ को चोट पहुँचाए बिना मुद्रा में बहुत अधिक तनाव के बिना घुटने। यदि आप गर्दन के क्षेत्र में तनाव महसूस करते हैं, तो अपने सिर के नीचे ब्लॉक की तरह समर्थन का उपयोग करें। प्राण (सांस) को आसानी से प्रवाहित करें। आपकी मांसपेशियों में कसाव हो सकता है। आपके लिए बहुत ज्यादा झुकना, यह ठीक है। अभ्यास के साथ, आपका शरीर अधिक लचीला हो जाएगा। अधिकतम लाभ के लिए, हर दिन 3- 5 मिनट के लिए अभ्यास करें।"),
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
                          "जो महिलाएं गर्भवती हैं या मासिक धर्म पूरी तरह से आगे नहीं झुकना चाहिए। पेट को मुलायम और पीठ को सीधा रखने के लिए रीढ़ को फर्श और दीवार पर हथेलियों के समानांतर रखकर अर्ध उत्तानासन करें। स्पाइन हर्नियेशन वाले लोगों को पूरी तरह से आगे नहीं झुकना चाहिए, और उन्हें इस आसन को ब्लॉक पर अपनी हथेलियों के साथ अवतल के साथ करना चाहिए।",
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

class utthita_hastapadangusth_trans extends StatefulWidget {
  utthita_hastapadangusth_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _utthita_hastapadangusth_transState();
  }
}

class _utthita_hastapadangusth_transState
    extends State<utthita_hastapadangusth_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615108169/y2mate.com_-_Utthita_Padmasana_Yoga_Asana_in_Hindi_Yoga_For_Weight_Loss_Yoga_For_Beginners_1080p_dlly2b.mp4');
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
                      child: Text("उफिता हस्तपदंगुष्ठा के फायदे",
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
                          "1. पैरों और टखनों को मजबूत बनाता है",
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
                            "2. यह हैमस्ट्रिंग (पीठ की जांघ की मांसपेशियों) को गहराई से खींचता है",
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
                          "3. कूल्हों, कंधों और बाजुओं को खोलता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. संतुलन की भावना में सुधार",
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
                            "5. एकाग्रता में सुधार करता है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("उफिता हस्तपदंगुष्ठा के नुकसान",
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
                          "1. यह आसन पर्यवेक्षण में किया जाना चाहिए। संशोधनों को शुरुआती लोगों द्वारा अभ्यास नहीं किया जाना चाहिए।",
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
                            "2. कटिस्नायुशूल वाले लोगों को इस मुद्रा का अभ्यास नहीं करना चाहिए।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. पीठ के निचले हिस्से या टखने की चोट वाले लोगों को इस मुद्रा का अभ्यास नहीं करना चाहिए।",
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
                                "आप इस मुद्रा को कुर्सी की पीठ के ऊपरी किनारे पर उभरे हुए पैर (कंबल के साथ गद्देदार) के सहारे रख सकते हैं। कुर्सी को एक दीवार से एक या दो इंच ऊपर सेट करें और अपनी उठी हुई एड़ी को दीवार पर मजबूती से दबाएं।"),
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
                          "घायल टखने, घुटने, कूल्हे, पीठ या कंधे से पीड़ित किसी को भी उष्टिता हस्सा पडंगुस्थासन स्ट्रैप के अभ्यास से बचना चाहिए। किसी अन्य प्रकार की चोट जो बेचैनी या बेचैनी की ओर ले जाती है, धीमी गति से जाने के लिए और शिक्षक के मार्गदर्शन की मदद से सावधानी बरतनी चाहिए।",
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

class vajrasana_trans extends StatefulWidget {
  vajrasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _vajrasana_transState();
  }
}

class _vajrasana_transState extends State<vajrasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615108472/PM_Modi_shares_animated_video_of_Vajrasana_promotes_yoga_sn0tiq.mp4');
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
                      child: Text("वज्रासन के फायदे",
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
                          "1. आमवाती दर्द से राहत दिलाता है",
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
                            "2. पेल्विक फ्लोर मसल्स को मजबूत करता है",
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
                          "3. हमारे दिमाग को शांत करने में मदद करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. उच्च रक्तचाप का उपचार (उच्च रक्तचाप)",
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
                            "5. नींद में सुधार",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("वज्रासन के नुकसान",
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
                          "1. यदि आपके बछड़े या हैमस्ट्रिंग में कोई चोट है तो वज्रासन का अभ्यास न करें।",
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
                            "2. हर्निया से पीड़ित या आंतों के अल्सर वाले लोगों को वज्रासन का अभ्यास करने से पहले चिकित्सीय सलाह और मार्गदर्शन लेना चाहिए।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. अगर आपको घुटनों में गठिया है तो वज्रासन का अभ्यास न करें।",
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
                                "आगे की ओर झुकें जब तक कि हाथों की उंगलियां या हथेलियां पैरों के दोनों ओर फर्श को न छू लें। माथे से घुटनों को छूने की कोशिश करें। तनाव न लें। घुटनों को सीधा रखें। आगे झुकते समय साँस छोड़ें। फेफड़ों से हवा की अधिकतम मात्रा को बाहर निकालने के लिए पेट को अंतिम स्थिति में अनुबंधित करने का प्रयास करें।"),
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
                          "जिन व्यक्तियों को कमर दर्द है उन्हें इस आसन से बचना चाहिए। कम से कम, उन्हें पूरी तरह से आगे नहीं झुकना चाहिए। वे खुद को केवल उतने ही आराम से मोड़ सकते हैं।",
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

class vasishtasana_trans extends StatefulWidget {
  vasishtasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _vasishtasana_transState();
  }
}

class _vasishtasana_transState extends State<vasishtasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615108830/y2mate.com_-_Vasisthasana_Side_Plank_Pose_for_Shoulder_Arm_Neck_%E0%A4%B5%E0%A4%B6%E0%A4%B7%E0%A4%9F_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%A4%E0%A4%B0%E0%A4%95_%E0%A4%AB%E0%A4%AF%E0%A4%A6_Jeevan_Kosh_480p_lroij5.mp4');
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
                      child: Text("वशिष्ठासन के फायदे",
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
                          "1. अपनी बाहों और कंधों को मजबूत और टोन करें।",
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
                            "2. परीक्षण - और इसलिए बनाता है - आपका संतुलन, जो ध्यान और एकाग्रता में सुधार करने में मदद करता है।",
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
                          "3. आपकी पीठ की मांसपेशियों को मजबूत करता है, विशेष रूप से आपकी पीठ के निचले हिस्से और आपकी गहरी रीढ़ की हड्डी को स्थिर करने वाली मांसपेशी, क्वाड्रेटस लम्बरोरम।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. अपनी मुख्य शक्ति में सुधार करता है।",
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
                            "5. आपके ग्लूटस मैक्सिमस, हैमस्ट्रिंग, क्वाड्रिसेप्स और बछड़ों में ताकत पैदा करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("वशिष्ठासन के नुकसान",
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
                          "1. यदि आपको उच्च रक्तचाप है, तो अपने सिर को अपने दिल से ऊपर रखना सुनिश्चित करें।",
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
                            "2. यदि आपको पीठ या पैर में चोट है, तो आप इस मुद्रा से बचना चाह सकते हैं।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. एक हर्नियेटेड डिस्क के साथ या संधिशोथ वाले छात्रों को इस मुद्रा से बचने की इच्छा हो सकती है।",
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
                                "वशिष्ठासन की इस भिन्नता के लिए अपने कंधों और हाथों को सीधा रखते हुए अपनी कलाई से चारों तरफ से शुरुआत करें। अब, अपने दाहिने हाथ को अपने शरीर की मध्य रेखा पर शिफ्ट करें। अपने बाएं पैर को अपने पीछे, पैर की उंगलियों पर फैलाएं, और अपने बाएं पैर की गेंद को फर्श पर टिकाएं। आप पा सकते हैं कि यह आपके संतुलन को आपके दाहिने पैर को दाईं ओर शिफ्ट करने में मदद करता है ताकि आपका दाहिना पिंडली विकर्ण से अधिक पर हो। अपने बाएं हाथ को अपने बाएं कूल्हे पर रखें।"),
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
                          "कलाई, कोहनी और कंधे के मुद्दों वाले लोगों को इस मुद्रा से बचना चाहिए। बेहतर संतुलन और समर्थन के लिए दीवार के खिलाफ झुकाव के साथ इस मुद्रा को करें।",
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

class viparita_dandasana_trans extends StatefulWidget {
  viparita_dandasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _viparita_dandasana_transState();
  }
}

class _viparita_dandasana_transState extends State<viparita_dandasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615298572/How_to_do_Dwi_Pada_Viparita_Dandasana_zybfbt.mp4');
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
                      child: Text("विपरीत दण्डासना के फायदे",
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
                          "1. मस्तिष्क को शांत और शांत करता है।",
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
                            "2. भावनात्मक स्थिरता आत्मविश्वास पैदा करता है।",
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
                          "3. अधिवृक्क, थायरॉयड, पिट्यूटरी और पीनियल ग्रंथियों को उत्तेजित करता है।",
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
                          "4. धीरे से मालिश और दिल को मजबूत करता है, जिससे धमनी रुकावट को रोका जा सकता है।",
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
                            "5. फेफड़ों की क्षमता बढ़ाता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("विपरीत दण्डासना के नुकसान",
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
                          "1. गर्भवती महिलाओं को ऐसे आक्रमणों से दूर रखने के लिए कहा जाता है जो अग्रिम स्तर पर हों।",
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
                            "2. ब्लड प्रेशर के रोगियों को टू लेग इनवर्टेड स्टाफ पोज़ के इस अभ्यास से बचना चाहिए।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. शरीर के किसी भी आंतरिक अंग की सर्जरी से बचना चाहिए। लेकिन योग शिक्षक से उचित मार्गदर्शन लेना महत्वपूर्ण है।",
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
                                "अगर आपको भी अपने मस्से पर शर्म आती है, तो इस आसन का अभ्यास करें और इससे पेट की चर्बी कम होती है। आप इस आसन को अपनी योग दिनचर्या में शामिल करने की कोशिश करें, ऊपरी शरीर में भुजाओं और कंधों को मजबूत करें। अगर आपको एहसास नहीं है तो यह पूरी क्रिया, लेकिन यह वास्तव में आपके शरीर के लिए बड़ा काम है। आपको इस आसन को करने से पहले शरीर को तैयार करना है, इसलिए इनवर्टेड स्टाफ पोज करने से पहले शरीर को वार्म-अप करना न भूलें। अच्छा आसन हमारे शरीर की रीढ़ को मजबूत करना है। इससे रीड की हड्डी में लचीलापन आता है। इसमें से विप्रिता दंडासन भी आपके आंतों को सक्रिय रखने, आपके शरीर को गति और शक्ति प्रदान करने में महत्वपूर्ण भूमिका निभाता है।"),
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
                          "गर्दन, कंधे, हाथ, कूल्हों या पीठ में चोट। माइग्रेन या माइग्रेन से जुड़े लक्षणों से भी बचना चाहिए। अवसाद और अवसाद से संबंधित लक्षण, क्योंकि हृदय और सिर की ओर रक्त का प्रवाह सुरक्षित नहीं है।",
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

class viparita_karani_trans extends StatefulWidget {
  viparita_karani_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _viparita_karani_transState();
  }
}

class _viparita_karani_transState extends State<viparita_karani_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615110509/%E0%A4%AC%E0%A5%9D%E0%A4%A4%E0%A5%80_%E0%A4%89%E0%A4%AE%E0%A5%8D%E0%A4%B0_%E0%A4%95%E0%A4%BE_%E0%A4%85%E0%A4%B8%E0%A4%B0_%E0%A4%B0%E0%A5%8B%E0%A4%95%E0%A5%87%E0%A4%97%E0%A4%BE_%E0%A4%B5%E0%A4%BF%E0%A4%AA%E0%A4%B0%E0%A5%80%E0%A4%A4_%E0%A4%95%E0%A4%B0%E0%A4%A3%E0%A5%80_Yoga_to_slow_down_ageing_effects_Viparita_Karani___Jeevan_Kosh_bmxjzr.mp4');
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
                      child: Text("विपरीता करणी के फायदे",
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
                          "1. सूजन टखनों और वैरिकाज़ नसों को राहत देता है",
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
                            "2. पुरुषों और महिलाओं में क्रमशः वृषण, वीर्य और डिम्बग्रंथि समस्याओं में मदद करता है",
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
                          "3. पाचन में सुधार करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. थके हुए पैरों या पैरों को पुनर्स्थापित करता है",
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
                            "5. गर्दन के पीछे, सामने के धड़, और पैरों के पीछे की तरफ खिंचाव",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("विपरीता करणी के नुकसान",
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
                          "1. उच्च रक्तचाप: जिन साधकों को उच्च रक्तचाप हो, उन्हें इस योग मुद्रा का अभ्यास नहीं करना चाहिए क्योंकि इससे स्थिति बिगड़ जाती है।",
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
                            "2. हृदय रोग: हृदय की स्थिति के मामले में, पैर-अप-द-वॉल मुद्रा का अभ्यास प्रतिबंधित होना चाहिए।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. थायराइड की समस्या: यह उन रोगियों द्वारा भी नहीं किया जाना चाहिए जिन्होंने थायराइड को बढ़ाया है।",
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
                                "एक साथ पैरों के साथ एक आरामदायक स्थिति में लेटें। पैरों को सीधा रखते हुए उन्हें ऊपर उठाएं। बाहों और हाथों को नीचे रखें और नितंब को ऊपर उठाएं। हाथों को निचली पीठ पर रखें, कोहनी को फर्श पर रखें। कुछ समय के लिए स्थिर रहें। श्वास लें और पूरी तरह से सांस छोड़ें, पेट की सांस और पंप करें; यह विपरीता करणी है।"),
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
                          "यह आसन एक हल्का उलटा है, और इसलिए, मासिक धर्म के दौरान इसे लेने से बचना चाहिए। अगर आपको मोतियाबिंद जैसी गंभीर समस्या है तो इस आसन से बचें। यदि आपको गंभीर पीठ और गर्दन की समस्या है, तो सुनिश्चित करें कि आप एक प्रमाणित योग प्रशिक्षक के मार्गदर्शन में इस आसन को करते हैं।",
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

class viparita_virabhadrasana_trans extends StatefulWidget {
  viparita_virabhadrasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _viparita_virabhadrasana_transState();
  }
}

class _viparita_virabhadrasana_transState
    extends State<viparita_virabhadrasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615110617/%E0%A4%A5%E0%A4%95%E0%A4%BE%E0%A4%A8_%E0%A4%B9%E0%A5%8B_%E0%A4%95%E0%A5%8B%E0%A4%B8%E0%A5%8B%E0%A4%82_%E0%A4%A6%E0%A5%82%E0%A4%B0____%E0%A4%B5%E0%A4%BF%E0%A4%AA%E0%A4%B0%E0%A5%80%E0%A4%A4_%E0%A4%B5%E0%A5%80%E0%A4%B0%E0%A4%AD%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8____Yoga_For_Energy_Stamina_By_Priyanka_Vinayak_Sharma_kqesf5.mp4');
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
                      child: Text("विपरीता वीरभद्रासन के फायदे",
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
                          "1. निचले शरीर को मजबूत करता है।",
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
                            "2. धड़ की भुजाएँ और भुजाएँ।",
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
                          "3. दृढ़ता बढ़ाता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. बाजुओं, गर्दन और कोड़ों को मजबूत करता है।",
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
                            "5. कंधे, छाती और कूल्हों को खोलता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("विपरीता वीरभद्रासन के नुकसान",
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
                          "1. चोट लगनी चाहिए",
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
                            "2. कूल्हे की समस्या",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. उच्च या निम्न रक्तचाप",
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
                                "अपने दाहिने पैर आगे और अपने बाएं पैर वापस के साथ योद्धा द्वितीय में शुरू करें। सीधे अपने टखने पर अपने सामने के घुटने को मोड़ें। अपने दाहिने हाथ को आकाश पर रखें। अपने सामने के घुटने में झुकें। हर धड़ के साथ अपने धड़ के किनारों को घुमाएं। अपने पैरों को हर साँस के साथ मजबूत करें। अगर यह आपकी गर्दन के लिए आरामदायक है, तो मुड़ें अपने दाहिने हाथ की उंगलियों तक अपने टकटकी। अपने कंधों को अपनी पीठ के नीचे रखें। 3-5 सांसों के लिए रखें, फिर योद्धा II को छोड़ दें। दूसरी तरफ दोहराएं।"),
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
                          "किसी भी गर्दन, रीढ़ या कंधे की चोट वाले व्यक्ति को इस मुद्रा से बचना चाहिए। उच्च या निम्न रक्तचाप से पीड़ित व्यक्ति को भी आसन करने से बचना चाहिए।",
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

class shavasana_trans extends StatefulWidget {
  shavasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _shavasana_transState();
  }
}

class _shavasana_transState extends State<shavasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615110580/y2mate.com_-_Relaxation_Shavasana_Hindi_480p_1_rsta8j.mp4');
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
                      child: Text("शवासन के फायदे",
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
                          "1. पाचन और प्रतिरक्षा प्रणाली की सहायता से केंद्रीय तंत्रिका तंत्र को शांत करता है।",
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
                            "2. मन को शांत करता है और तनाव को कम करता है।",
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
                          "3. सिरदर्द, थकान और चिंता को कम करता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. निम्न रक्तचाप में मदद करता है।",
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
                            "5. आध्यात्मिक जागृति और उच्च चेतना के प्रति जागरूकता को बढ़ावा देता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("शवासन के नुकसान",
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
                          "1. सावासन करते समय अपने शरीर को हिलाने से बचें क्योंकि यह अभ्यास में गड़बड़ी कर सकता है और आपके ध्यान को भटकाएगा।",
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
                            "2. इसे एक कठिन, सपाट सतह पर प्रदर्शन करना सुनिश्चित करें।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. इस माहौल में शांत और शांत वातावरण प्रदान करें।",
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
                                "सबसे पहले एक योग मैट पर अपनी पीठ के बल सीधे लेट जाएं। दोनों हाथों को शरीर से दूर रखें (लगभग 15 सेमी) और हथेलियाँ ऊपर की ओर। पैरों को लगभग 30 डिग्री पर एक दूसरे से थोड़ा दूर रखें। आपकी रीढ़ जमीन को छूने वाले कंधों के साथ सीधी होनी चाहिए। बिना किसी हलचल के अपने शरीर को पूरी तरह से शिथिल रखें। अपनी आँखें बंद रखें और अपने नथुने से सांस लेने पर ध्यान केंद्रित करें। अपने सिर को दोनों तरफ झुकाव न दें; इसे सीधा और आरामदायक रखें। चार से पांच मिनट के बाद, अपनी आँखें खोलें और धीरे-धीरे अपने आप को मुद्रा से मुक्त करें।"),
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
                          "जिन लोगों को पीठ के बल लेटने की सलाह नहीं दी जाती है, उन्हें इस मुद्रा से बचना चाहिए। जो गंभीर अम्लता से पीड़ित है, वह खुद / पीठ पर झूठ बोलने के लिए खुद को चोट पहुंचा सकता है क्योंकि भोजन की नली आपके शरीर की प्रणाली को विस्थापित कर सकती है।",
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

class virasana_trans extends StatefulWidget {
  virasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _virasana_transState();
  }
}

class _virasana_transState extends State<virasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016628/Virasana_Hero_Pose_Health_Benefits_in_Pregnancy_Yoga___%E0%A4%B5%E0%A5%80%E0%A4%B0%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%B8%E0%A4%B9%E0%A5%80_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BC%E0%A4%BE_-_%E0%A4%AB%E0%A4%BC%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87___Jeevan_Kosh_smdrcu.mp4');
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
                      child: Text("वीरासन के फायदे",
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
                          "1. गर्भावस्था के दौरान वीरसाना पैरों की सूजन को कम करता है",
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
                            "2. वीरासन (हीरो पोज़) के नियमित अभ्यास से जांघों, घुटनों और टखनों में खिंचाव पैदा होता है और इससे वे अधिक मजबूत हो जाते हैं",
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
                          "3. रजोनिवृत्ति के लक्षणों को भी दूर करने में मदद करता है",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. नाभि क्षेत्र पर भी इसका बहुत प्रभाव पड़ता है",
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
                            "5. हिप्स को उभारने के लिए वीरासन एक अच्छा आसन है",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("वीरासन के नुकसान",
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
                          "1. अगर आपके घुटनों में दर्द है, तो इस आसन को न करें",
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
                            "2. अगर आपको दिल से जुड़ी किसी भी तरह की समस्या है, तो इस आसन से बचें",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. अगर आपको ऐसा करने में परेशानी होती है तो आप इस आसन को तकिये या तकिये पर कर सकते हैं या किसी ब्लॉक पर बैठ सकते हैं।",
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
                                "सबसे पहले, वज्रासन में फर्श पर या योगा मैट पर बैठें। अपने दाहिने टखने को मोड़ें और दाहिने पंजे को कूल्हे के नीचे से निकालें और दाहिनी जांघ से बाहर रखें। बाएं पैर के साथ भी ऐसा करें (सबसे ऊपर पैरों को जमीन को छूना चाहिए)। इसके लिए, आपके कूल्हे या बैठने वाली हड्डियों को जमीन को छूना चाहिए। अपने हाथों को अपने घुटनों पर रखें (हथेलियों को आपके घुटने को छूना चाहिए)। जब तक आप आराम से बैठ सकते हैं, तब तक वीरसासन में बैठें। सामान्य रूप से सांस लें। मुद्रा से बाहर निकलने के लिए अपनी हथेलियों को फर्श पर रखें और अपने कूल्हे को उठाएं"),
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
                          "हीरो पोज़ या वीरासन ध्यान या प्राणायाम के लिए एक आरामदायक बैठा हुआ मुद्रा है, लेकिन बैठने के दौरान घुटनों और टखनों में अपार खिंचाव होता है, इसलिए घुटनों और टखनों में बहुत अधिक अकड़न होने पर यह एक बड़ा जोखिम हो सकता है। घुटनों या टखनों में चोट। एक अनुभवी शिक्षक का उचित मार्गदर्शन हमेशा ऐसी स्थितियों में सहायक होता है।",
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

class vrikshasana_trans extends StatefulWidget {
  vrikshasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _vrikshasana_transState();
  }
}

class _vrikshasana_transState extends State<vrikshasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615016007/Vrikshasana_Tree_Pose_Yoga_for_strong_legs_Height_%E0%A4%B5%E0%A5%83%E0%A4%95%E0%A5%8D%E0%A4%B7%E0%A4%BE%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BC%E0%A4%BE_%E0%A4%94%E0%A4%B0_%E0%A4%AB%E0%A4%BC%E0%A4%BE%E0%A4%AF%E0%A4%A6%E0%A5%87_Jeevan_Kosh_f1xk1e.mp4');
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
                      child: Text("वृक्षासन के फायदे",
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
                          "1. यह पैरों को मजबूत करता है, और कूल्हों को खोलता है।",
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
                            "2. यह आपके न्यूरोमस्कुलर समन्वय में सुधार करता है।",
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
                          "3. यह संतुलन और धीरज के साथ मदद करता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. यह सतर्कता और एकाग्रता में सुधार करता है।",
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
                            "5. यह उन लोगों की मदद कर सकता है जो कटिस्नायुशूल (पैर में तंत्रिका दर्द) से पीड़ित हैं।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("वृक्षासन के नुकसान",
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
                          "1. घुटने या टखने के दर्द में इस आसन को न करें, अगर आपको कोई अनिद्रा है, तो इस आसन से बचें।",
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
                            "2. चक्कर आने की स्थिति में इस आसन को न करें।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. और याद रखें इस आसन को माइग्रेन में न करें।",
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
                                "सीधे खड़े रहें। अपने बाएं पैर पर मजबूती से रहें और अपने दाहिने पैर को उठाएं। अपने दाहिने पैर को घुटने पर मोड़ें। अब, अपने दाहिने पैर को अपनी बाईं जांघ के अंदर रखें। सुनिश्चित करें कि आपके दाहिने पैर के पंजे नीचे की ओर हैं। अपनी हथेलियों को अपने सीने के स्तर पर प्रार्थना में लगाएं। अब, अपने हाथों को अपने सिर के ऊपर उठाएँ जब तक कि आपके हाथ ऊपर की ओर न खिंच जाएँ। गहरी साँस लेते हुए स्थिति को आगे बढ़ाएँ। अपनी बाहों को छाती के स्तर तक कम करें और फिर अपनी हथेलियों को अलग करें। अपने दाहिने पैर को सीधा करें और सीधा खड़ा हो जाएं। अपने दाहिने पैर के साथ आसन दोहराएं।"),
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
                          "यदि आप माइग्रेन, उच्च या निम्न रक्तचाप से पीड़ित हैं, तो इस आसन का अभ्यास न करें। अगर आप अनिद्रा से पीड़ित हैं तो वृक्षासन का अभ्यास करने से बचें। शुरुआत में, आपको अपने पैर को घुटने से ऊपर रखना मुश्किल हो सकता है, इसलिए आप इसे घुटनों से नीचे रख सकते हैं लेकिन इसे कभी भी घुटने पर न रखें।",
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

class vrischikasana_trans extends StatefulWidget {
  vrischikasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _vrischikasana_transState();
  }
}

class _vrischikasana_transState extends State<vrischikasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615111188/y2mate.com_-_vrischik_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B8_%E0%A4%95%E0%A4%B0_in_%E0%A4%B9%E0%A4%A8%E0%A4%A6_KV_yoga_competition_Scorpion_Pose_Vrischikasana_Yoga_Pose__480p_v6ffbl.mp4');
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
                      child: Text("वृश्चिकासन के फायदे",
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
                          "1. शारीरिक उम्र बढ़ने की प्रक्रिया को नियंत्रित करता है।",
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
                            "2. मस्तिष्क और पिट्यूटरी ग्रंथि में रक्त के प्रवाह में सुधार।",
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
                          "3. सभी शरीर प्रणालियों को पुनर्जीवित करता है।",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. निचले अंगों और पेट में परिसंचरण में सुधार।",
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
                            "5. प्रजनन अंगों को टोन करता है।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("वृश्चिकासन के नुकसान",
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
                          "1. जब तक आपका योग प्रशिक्षक या गुरु आपको यह नहीं बताता कि आप इसके लिए तैयार हैं, तब तक इस मुद्रा का प्रयास न करें।",
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
                            "2. यदि आप किसी कूल्हे या पीठ की समस्या से पीड़ित हैं तो आपको इस मुद्रा को नहीं करना चाहिए।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. यदि आपको हृदय रोग का इतिहास है, तो इस आसन से बचना सबसे अच्छा है।",
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
                                "शीर्षासन की अंतिम स्थिति को मानें। अपने पूरे शरीर को टिकाएं, घुटनों को मोड़ें और पीछे की ओर झुकें। अपनी निचली भुजाओं को सीधा करें ताकि वे एक-दूसरे के समानांतर रहें, आपकी हथेलियां फर्श पर सपाट हों। अपने आसनों पर वजन को नियंत्रित करें और बनाए रखें। संतुलन करें। पैरों को सिर की ओर रखें। सिर को पीछे और ऊपर की ओर उठाएं। अपनी ऊपरी भुजाओं को ऊपर उठाएं ताकि वे लंबवत हो। ऊँची एड़ी के जूते अंतिम सिर में सिर पर रखें। अपने पूरे शरीर को ढीला करें। इस स्थिति में रुकें। जब तक आप सहज महसूस करते हैं। शीर्षासन में भाग लें और अपने पैरों को कम करें।"),
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
                          "इस आसन का अभ्यास करने के बाद, पीठ के तनाव को कम करने के लिए पश्चिमोत्तानासन या आगे की ओर झुकते हुए आसन का अभ्यास करें। अगर आप हाई ब्लड प्रेशर या दिल के मरीज हैं तो इस मुद्रा का अभ्यास न करें। यदि आपको पेट से संबंधित विकार हैं तो बिच्छू मुद्रा का अभ्यास न करें।",
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

class yoganidrasana_trans extends StatefulWidget {
  yoganidrasana_trans({this.title = 'Chewie Demo'});

  final String title;

  @override
  State<StatefulWidget> createState() {
    return _yoganidrasana_transState();
  }
}

class _yoganidrasana_transState extends State<yoganidrasana_trans> {
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
        'https://res.cloudinary.com/dreezne3c/video/upload/v1615298790/How_to_do_yoga_nidra_asana._%E0%A4%AF%E0%A5%8B%E0%A4%97%E0%A4%BE_%E0%A4%A8%E0%A4%BF%E0%A4%A6%E0%A5%8D%E0%A4%B0%E0%A4%BE_%E0%A4%86%E0%A4%B8%E0%A4%A8_%E0%A4%95%E0%A4%B0%E0%A4%A8%E0%A5%87_%E0%A4%95%E0%A4%BE_%E0%A4%B8%E0%A4%AC%E0%A4%B8%E0%A5%87_%E0%A4%86%E0%A4%B8%E0%A4%BE%E0%A4%A8_%E0%A4%A4%E0%A4%B0%E0%A5%80%E0%A4%95%E0%A4%BE_Yognidrasan_yfrgho.mp4');
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
                      child: Text("योगनिद्रासन के फायदे",
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
                          "1. बेहतर रक्त परिसंचरण भर में",
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
                            "2. स्वस्थ श्वसन प्रणाली",
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
                          "3. ताकतवर अब्दीन",
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    )
                  ]),
                  Row(children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(20, 7, 0, 0),
                      child: Text(
                        "4. बेहतर मुद्रा",
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
                            "5. दृढ़ अधिवृक्क ग्रंथियाँ",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
                        child: Text("योगनिद्रासन के नुकसान",
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
                          "1. गंभीर पीठ दर्द से पीड़ित व्यक्ति को यह आसन नहीं करना चाहिए।",
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
                            "2. यदि आप काठ का डिस्क हर्नियेशन के मरीज हैं, तो इस आसन को न करें।",
                            textDirection: TextDirection.ltr,
                          ),
                        )),
                  ]),
                  Row(children: [
                    Flexible(
                      fit: FlexFit.tight,
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                        child: Text(
                          "3. अगर आप हाई बीपी या अस्थमा के मरीज हैं तो इस आसन को न करें।",
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
                                "फर्श पर लेट जाएं। अपने दाहिने घुटने को मोड़ें और अपने बाएं हाथ से अपने दाहिने पैर को पकड़ें। अपने दाहिने कोहनी को अपने दाहिने घुटने के नीचे लाएं और अपने दाहिने पैर को ऊपर उठाएं। अपने दाहिने बछड़े को अपने बाएं हाथ से पकड़ें और अपने दाहिने घुटने को अपने दाहिने कंधे के पीछे लाएं। अपने दाहिने कूल्हे को थोड़ा घुमाएं और अपने दाहिने पैर को अपने सिर के ऊपर लाएं। अपनी छाती को आगे बढ़ाएं और अपने दाहिने टखने को अपने सिर के पीछे रखें। अपने बाएं पैर के साथ अनुक्रम दोहराएं। अपने पैरों को अपने सिर के पीछे रखें और अपनी पीठ को अपनी पीठ के चारों ओर लपेटें और अपनी उंगलियों को गूंथ लें। जब तक आप कर सकते हैं तब तक इस मुद्रा में रहें।"),
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
                          "यदि आपके पास हाल ही में कोई चिकित्सा चिंता है, तो इस योग मुद्रा का अभ्यास करने से पहले अपने चिकित्सक से चर्चा करें। पैर, कूल्हों, पीठ या कमर की चोट से पीड़ित चिकित्सकों को इस मुद्रा का अभ्यास नहीं करना चाहिए। गर्भवती महिलाओं और पीरियड्स वाली महिलाओं को इस मुद्रा का अभ्यास करने से बचना चाहिए। विशेषज्ञ योग शिक्षक के मार्गदर्शन में या अपने सहयोगियों से मदद मांगने के लिए इस मुद्रा का अभ्यास करना हमेशा उचित होता है।",
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

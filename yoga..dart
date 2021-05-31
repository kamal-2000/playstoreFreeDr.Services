import 'package:auto_size_text/auto_size_text.dart';

import 'videoplayer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main(List<String> args) {}

class yoga extends StatefulWidget {
  @override
  _yogaState createState() => _yogaState();
}

class _yogaState extends State<yoga> {
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
      body: _loading
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
                              borderRadius: BorderRadius.circular(15)),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Colors.black87,
                                ),
                                hintText: "Search Yoga Asanas",
                                hintStyle: TextStyle(
                                    color: Colors.grey, fontSize: 15)),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                      child: AutoSizeText(
                        "Yoga Asanas",
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                        ),
                        minFontSize: 15,
                        maxFontSize: 25,
                        overflow: TextOverflow.ellipsis,
                      )),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as1('https://i.ibb.co/dtf2pmv/as1.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as2('https://i.ibb.co/60d59nj/as2.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as3('https://i.ibb.co/QNVtCMZ/as3.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as4('https://i.ibb.co/VNSX4RH/as4.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as5('https://i.ibb.co/rGg35Z6/as5.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as6(
                                    'https://i.ibb.co/FnVD8Sh/82d8e0431bfa83a5c8c1741d18e7e484-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as7(
                                'https://i.ibb.co/7VLbr8Z/Simhasana-Lion-Yoga-Pose-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as8('https://i.ibb.co/P5VGSB0/as8.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as39(
                                'https://i.ibb.co/jDHyZ9s/i-Stock-840155622-1024x683-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as10(
                                    'https://i.ibb.co/bsQDDRY/2a73bafa57a0689d842ef121197306a1-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as11(
                                'https://i.ibb.co/vmkctHW/shirshasana-akfyox-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    as12('https://i.ibb.co/S7Mtg1G/as12.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as13(
                                'https://i.ibb.co/q99FB2R/young-attractive-woman-practicing-yoga-260nw-701421304-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as42(
                                    'https://i.ibb.co/gzhJQxK/0efba06b3414962efab4331d234f46d3-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as17(
                                'https://i.ibb.co/DG2zh8J/Setu-Bandha-Sarvangasana-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as40(
                                    'https://i.ibb.co/tXdVPTq/yoga-drawing-clip-art-yoga-thumbnail-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as41(
                                'https://i.ibb.co/q05trqM/Benefits-of-Scorpion-Pose-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as20(
                                    'https://i.ibb.co/SyQH58C/Sukhasana-karne-ki-vidhi-aur-labh-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as21(
                                'https://i.ibb.co/nc5XfFr/Upward-Salute-Mountain-Pose-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    as22('https://i.ibb.co/GHWD9VJ/as22.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as23(
                                'https://i.ibb.co/LvWXfZ0/imgbin-yoga-vriksasana-exercise-gomukhasana-trikonasana-yoga-exercises-8-Rm-Ur-Gs3-NLh-Em-Z1-Zpk-QUH.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child:
                                    as24('https://i.ibb.co/ZNYzpyD/as24.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as25('https://i.ibb.co/TKqj9hM/as25.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as26(
                                    'https://i.ibb.co/xDvMMjc/Wide-Seated-Forward-Bend-1024x683-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as27('https://i.ibb.co/SXtj9df/as27.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as28(
                                    'https://i.ibb.co/ZWPD75B/Robin-upward-facing-dog-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as29(
                                'https://i.ibb.co/F8ZbkYF/6-Camel-Pose-Shutterstock-ss-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as30(
                                    'https://i.ibb.co/zs6H36K/129468767-S-2-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as31(
                                'https://i.ibb.co/0CzqDGb/standing-forward-bend-uttanasana-pincha-peanuts-uttanasana-png-244-277-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as32(
                                    'https://i.ibb.co/6mwxQfK/img-6830-removebg-preview.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as33('https://i.ibb.co/djJchsh/as33.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.2,
                                    width:
                                        MediaQuery.of(context).size.width / 2.2,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                    child: as34(
                                        'https://i.ibb.co/BBJGfVj/Side-Plankpose-removebg-preview.png'),
                                  ),
                                ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as35(
                                'https://i.ibb.co/5RSF4q1/young-yogi-attractive-woman-practicing-260nw-619048088-removebg-preview.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: as36(
                                    'https://i.ibb.co/Y8KM0fn/yoga-sarvangasana-viparita-karani-exercise-halasana-png-favpng-my-KSLFPa-JSUd-Lu-Aux-Ux-TQe91-D-t-re.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(
                    height: 10,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.2,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: as37('https://i.ibb.co/4K9LxKN/as37.png'),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height / 3.2,
                                width: MediaQuery.of(context).size.width / 2.2,
                                margin: const EdgeInsets.fromLTRB(0, 10, 5, 0),
                                child: others(
                                    'https://i.ibb.co/b50L4cg/others.png'),
                              ),
                            ])
                          ])
                        ]),
                  ]),
                  SizedBox(height: 20)
                ]))),
    );
  }

  Widget as1(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return ChewieDemo();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Halasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 1),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("हलासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as2(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return hanumanasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Hanumanasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("हनुमनासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as3(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return svastikasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Svastikasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("स्वस्तिकसन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as4(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return sarvangasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Sarvangasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सर्वाङ्गासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                          overflow: TextOverflow.ellipsis,
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as5(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return suryanamaskar();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Surya Namaskar"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(height: 0),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सुर्य नमस्कार"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as6(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return suptapadangusthasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Supta"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Padangusthasana"),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सुप्त पादाङ्गुष्ठासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as7(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return simhasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Simhasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सिंहासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as8(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return siddhasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Siddhasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सिद्धासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as10(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return samakonasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Samakonasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("समकोणासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as11(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return shirshasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Shirshasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("शीर्षासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as12(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return shavasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Shavasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("शवासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as13(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return shalabhasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Shalabhasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("शलभासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as17(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return setusarvangasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Setu Bandha"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Sarvangasana"),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 0,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सेतुबन्धसर्वाङ्गासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as20(image) {
    return AspectRatio(
        aspectRatio: 1 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fitWidth,
                alignment: Alignment.center,
                image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return sukhasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Sukhasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("सुखासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as21(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return tadasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Tadasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("ताडासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as22(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return tittibhasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Tittibhasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("टिट्टिभासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as23(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return trikonasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Trikonasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("त्रिकोणासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as24(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return trivikramasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Trivikramasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("त्रिविक्रमासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as25(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return tulasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Tulasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("तुलासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as26(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return upavishta_konasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Upavishta"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Konasana"),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("उपविष्टकोणासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as27(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return chakrasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Chakrasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("चक्रासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as28(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return urdhva_mukha_shvanasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Urdhva Mukha"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Shvanasana"),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("ऊर्ध्वमुखश्वानासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as29(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return ushtrasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Ushtrasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("उष्ट्रासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as30(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return utkatasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Utkatasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("उत्कटासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as31(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return uttanasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Uttanasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("उत्तानासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as32(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return utthita_hastapadangusth();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Utthita"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Hastapadangusth"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("उत्थित"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("हस्तपादाङ्गुष्ठासन"),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as33(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return vajrasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Vajrasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("वज्रासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as34(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return vasishtasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Vasishtasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("वसिष्ठासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as35(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return viparita_dandasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Viparita"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Dandasana"),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("विपरीत दण्डासन"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as36(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return viparita_karani();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Viparita Karani"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("विपरीतकरणि"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as37(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return viparita_virabhadrasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Viparita"),
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                      ),
                      Text(
                        ("Virabhadrasana"),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("विपरीतवीरभद्रासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as39(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return virasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Virasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("वीरासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as40(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return vrikshasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Vrikshasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("वृक्षासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as41(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.fitWidth, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return vrischikasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Vrischikasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("वृश्चिकासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget as42(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain,
                image: NetworkImage(image),
                alignment: Alignment.center),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return yoganidrasana();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Yoganidrasana"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("योगनिद्रासन"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }

  Widget others(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            color: Colors.brown[200],
            boxShadow: [BoxShadow(blurRadius: 12)],
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                fit: BoxFit.contain, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return consultyoga();
              }));
            },
            child: Container(
              child: Container(
                child: Center(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("Others"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          ("अन्य"),
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )
                    ])),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ));
  }
}

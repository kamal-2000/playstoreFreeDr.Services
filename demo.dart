import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'terms.dart';
import 'aboutus.dart';
import 'help.dart';

import 'consult_student.dart';
import 'login.dart';

import 'updatepassword.dart';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth_service.dart';
import 'profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'yoga..dart';
import 'consultnow.dart';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:search_widget/search_widget.dart';

void enablePlatformOverrideForDesktop() {
  if (!kIsWeb && (Platform.isMacOS || Platform.isWindows || Platform.isLinux)) {
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title, this.uid}) : super(key: key);
  //update the constructor to include the uid
  final String title;
  final String uid; //include this
  @override
  _HomePageState createState() => _HomePageState();
}

final GlobalKey<State> _keyLoader = new GlobalKey<State>();
String Name = "";
String Phone = "";
String Email = "";

class _HomePageState extends State<HomePage> {
  void initState() {
    super.initState();
    _getUserName();
  }

  Future<void> _getUserName() async {
    Firestore.instance
        .collection('users')
        .document((await FirebaseAuth.instance.currentUser()).uid)
        .get()
        .then((value) {
      setState(() {
        Name = value.data['fname'].toString();
        Phone = value.data['phoneNo'].toString();
        Email = value.data['email'].toString();
      });
    });
  }

  @override
  List<LeaderBoard> list = <LeaderBoard>[
    LeaderBoard(
      "Dr. Narendra Bhojwani",
      54,
    ),
    LeaderBoard("Dr. Ashok Kumar Saxena", 22.5),
    LeaderBoard("Dr. A.B. Mathur", 24.7),
    LeaderBoard("Dr. Sanjeev Kumar Joshi", 22.1),
    LeaderBoard("Dr. Punit Goswami", 22.5),
    LeaderBoard("Dr. Pragya Mathur", 24.7),
    LeaderBoard("Dr. Ankur Kanodia", 22.1),
    LeaderBoard("Dr. Kirti Agrawal", 22.5),
    LeaderBoard("Dr. Ragini Kanodia", 24.7),
    LeaderBoard("Dr. Poonam Bhojwani", 22.1),
    LeaderBoard("Dr. Atul Goyal", 22.5),
    LeaderBoard("Dr. Vishvesh Dave", 24.7),
    LeaderBoard("Dr. Gaurav Agarwal", 22.1),
    LeaderBoard("Dr. Raj Tak", 22.1),
    LeaderBoard("Mr. Gopal Singh Rajpoot", 22.1),
    LeaderBoard("Mrs. Savita Pareek", 22.5),
    LeaderBoard("Mrs. Sunanda Patil", 24.7),
    LeaderBoard("Miss. Raj Kanwar", 22.1),
    LeaderBoard("Mr. Yashaswi Goswami", 22.1),
    LeaderBoard("Mr. Ravi Meena", 22.1),
    LeaderBoard("Mr. Rohit Kumar Purohit", 22.5),
    LeaderBoard("Dr. Aakansha", 24.7),
    LeaderBoard("Mr. Jai Kumar Longani", 22.1),
    LeaderBoard("Mr. Yatin Golecha", 22.1),
  ];

  LeaderBoard _selectedItem;

  bool _show = true;

  String uid;

  final fb = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference().child("Student");
    final data = MediaQuery.of(context);

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
                child: InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute<void>(
                          builder: (BuildContext context) {
                        return ProfilePage();
                      }));
                    },
                    child: Stack(fit: StackFit.loose, children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 7, 12),
                        margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Image.asset(
                          'assets/man.png',
                        ),
                      ),
                    ])),
              ))
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
      body: new WillPopScope(
          onWillPop: _willPopCallback,
          child: SafeArea(
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
                        if (_show)
                          SearchWidget<LeaderBoard>(
                            dataList: list,
                            hideSearchBoxWhenItemSelected: false,
                            listContainerHeight:
                                MediaQuery.of(context).size.height / 4,
                            queryBuilder: (query, list) {
                              return list
                                  .where((item) => item.username
                                      .toLowerCase()
                                      .contains(query.toLowerCase()))
                                  .toList();
                            },
                            popupListItemBuilder: (item) {
                              return PopupListItemWidget(item);
                            },
                            selectedItemBuilder:
                                (selectedItem, deleteSelectedItem) {
                              return SelectedItemWidget(
                                  selectedItem, deleteSelectedItem);
                            },
                            // widget customization
                            noItemsFoundWidget: NoItemsFound(),
                            textFieldBuilder: (controller, focusNode) {
                              return MyTextField(controller, focusNode);
                            },
                            onItemSelected: (item) {
                              setState(() {
                                _selectedItem = item;
                              });
                            },
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
                  Stack(fit: StackFit.loose, children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => consultnow()),
                                );
                              },
                              child: Stack(fit: StackFit.loose, children: [
                                Container(
                                    width: double.infinity,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      color: Colors.brown[200],
                                      boxShadow: [BoxShadow(blurRadius: 12)],
                                      borderRadius: BorderRadius.circular(20),
                                      image: DecorationImage(
                                        fit: BoxFit.fitHeight,
                                        alignment: Alignment(-0.7, 1),
                                        image: AssetImage('assets/doctor.png'),
                                      ),
                                    ),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                              width: double.infinity,
                                              height: 190,
                                              decoration: BoxDecoration(
                                                image: DecorationImage(
                                                  alignment:
                                                      Alignment(0.7, 0.0),
                                                  image: AssetImage(
                                                      'assets/doctorlogo.png'),
                                                ),
                                              ),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Container(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 30, 0, 0),
                                                      margin: const EdgeInsets
                                                              .fromLTRB(
                                                          0, 100, 0, 0),
                                                      child: SizedBox(
                                                        child: AutoSizeText(
                                                          "Consult Our Online Doctors for Free",
                                                          style: TextStyle(
                                                              fontSize: 19,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                          minFontSize: 10,
                                                          maxLines: 1,
                                                          maxFontSize: 30,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                        ),
                                                      ),
                                                    )
                                                  ])),
                                        ])),
                                /*  Stack(fit: StackFit.loose, children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: AspectRatio(
                                      aspectRatio: 4.5 / 3,
                                      child: Container(
                                        width: double.infinity,
                                        margin: const EdgeInsets.only(
                                            top: 40, bottom: 10),
                                        decoration: BoxDecoration(
                                          image: DecorationImage(
                                            fit: BoxFit.fitHeight,
                                            alignment: Alignment(0.7, 0),
                                            image: AssetImage(
                                              'assets/doctorlogo.png',
                                            ),
                                          ),
                                        ),
                                      ),
                                    )),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 0),
                                        child: Align(
                                            alignment: Alignment.centerRight,
                                            child: Container(
                                                child: Center(
                                              child: AutoSizeText(
                                                "Consult Our Online Doctors for Free",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w600),
                                                minFontSize: 10,
                                                maxLines: 1,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ))))
                                  ],
                                )
                              ])
                        ]),*/
                              ])),
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 20,
                  ),
                  Stack(fit: StackFit.loose, children: [
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 3.5,
                            width: MediaQuery.of(context).size.width / 2.2,
                            margin: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                            child: promoCard(''),
                          ),
                          Spacer(),
                          Stack(fit: StackFit.loose, children: [
                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height /
                                        3.5,
                                    width: MediaQuery.of(context).size.width /
                                        2.35,
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 15, 0),
                                    child: promoCard1(''),
                                  ),
                                ])
                          ])
                        ]),
                  ]),
                  SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.fromLTRB(18, 10, 0, 0),
                    child: Text("Common Symptoms",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: 10),
                  Stack(fit: StackFit.loose, children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              margin: const EdgeInsets.fromLTRB(28, 0, 0, 0),
                              height: 90,
                              child: Stack(children: [
                                ListView(
                                  shrinkWrap: false,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    fever(''),
                                    pimples(''),
                                    cough(''),
                                    headache(''),
                                    piles(''),
                                    anxiety(''),
                                    diabetes(''),
                                  ],
                                )
                              ])),
                        ])
                  ]),
                  SizedBox(height: 10),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            height: 90,
                            margin: const EdgeInsets.fromLTRB(28, 0, 0, 0),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                depression(''),
                                acidity(''),
                                weight_loss(''),
                                vomiting(''),
                                swelling(''),
                                gas(''),
                                rashes(''),
                                back_pain(''),
                              ],
                            )),
                      ]),
                  SizedBox(height: 50)
                ])),
          )),
      drawer: Drawer(
          child: Container(
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Column(children: [
                Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                    margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.white),
                    height: 100,
                    width: 100,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Center(
                          child: Image(
                        image: AssetImage("assets/man.png"),
                      )),
                    )),
                Container(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: AutoSizeText(
                    ("${Name}"),
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    minFontSize: 15,
                    maxFontSize: 20,
                    maxLines: 1,
                  ),
                )
              ]),
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(35),
                    bottomRight: Radius.circular(35)),
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return consultnow();
                }));
              },
              leading: Icon(
                Icons.phone_iphone,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "Consult Now",
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 22,
                maxLines: 1,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return HomePage();
                }));
              },
              leading: Icon(
                Icons.home,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "Home",
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 22,
                maxLines: 1,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return ProfilePage();
                }));
              },
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "Profile",
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 22,
                maxLines: 1,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.blueGrey,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return setting();
                }));
              },
              leading: Icon(
                Icons.settings,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "Setting",
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 22,
                maxLines: 1,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.blueGrey,
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return terms();
                }));
              },
              leading: Icon(
                Icons.assignment,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "Terms & Conditions",
                style: TextStyle(fontSize: 18, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 22,
                maxLines: 2,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return aboutus();
                }));
              },
              leading: Icon(
                Icons.report,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "About FreeDr.Services",
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 20,
                maxLines: 2,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return help();
                }));
              },
              leading: Icon(
                Icons.help,
                color: Colors.black,
              ),
              title: AutoSizeText(
                "Help",
                style: TextStyle(fontSize: 20, fontFamily: 'RobotoMono'),
                minFontSize: 15,
                maxFontSize: 20,
                maxLines: 1,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: Center(
                child: AutoSizeText("FreeDr.Services 1.0.0",
                    style: TextStyle(fontSize: 16),
                    minFontSize: 15,
                    maxFontSize: 20,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis),
              ),
            )
          ],
        ),
      )),
      floatingActionButton: FloatingActionButton(
          hoverElevation: 500,
          hoverColor: Colors.grey,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute<void>(builder: (BuildContext context) {
              return help();
            }));
          },
          backgroundColor: Colors.white,
          child: Image.network(
            "https://i.ibb.co/rGRx89Z/helplogo.png",
            height: 40,
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          child: Container(
        height: 60,
        color: Colors.blueGrey,
        child: Container(
            margin: const EdgeInsets.fromLTRB(5, 25, 0, 0),
            child: Center(
              child: Text(
                "Tech Support",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
            )),
      )),
    );
  }

  Future<bool> _willPopCallback() async {
    // await showDialog or Show add banners or whatever
    // then
    exit(0);
    Navigator.of(context).pop();
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }

  Widget promoCard(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            ),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (BuildContext context) {
                    return yoga();
                  }));
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/man.png'),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                                child: Center(
                                  child: AutoSizeText(
                                    "Consult Yoga Teachers",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                    minFontSize: 10,
                                    maxFontSize: 25,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.brown[200],
                          boxShadow: [BoxShadow(blurRadius: 12)],
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage('assets/yoga.png'),
                          ),
                        ),
                      ),
                    )))));
  }

  Widget promoCard1(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Stack(fit: StackFit.loose, children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image:
                  DecorationImage(fit: BoxFit.cover, image: AssetImage(image)),
            ),
            child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute<void>(builder: (BuildContext context) {
                    return consult_student();
                  }));
                },
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.brown[200],
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage('assets/man.png'),
                        ),
                      ),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 0, 5),
                              child: Center(
                                  child: AutoSizeText(
                                "Learn From Students",
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                                minFontSize: 10,
                                maxFontSize: 25,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              )),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.brown[200],
                          boxShadow: [BoxShadow(blurRadius: 12)],
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/student.png'),
                          ),
                        ),
                      ),
                    ))),
          )
        ]));
  }

  Widget fever(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Stack(fit: StackFit.loose, children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return common();
                }));
              },
              child: Container(
                child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Fever"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ]),
                  decoration: BoxDecoration(
                    color: Colors.brown[200],
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: NetworkImage("https://i.ibb.co/gmTRSd0/fever.png"),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                        begin: Alignment.bottomRight,
                        stops: [
                          0.1,
                          0.9
                        ],
                        colors: [
                          Colors.black.withOpacity(.8),
                          Colors.black.withOpacity(.1)
                        ])),
              ),
            ),
          )
        ]));
  }

  Widget pimples(image) {
    return Stack(children: [
      AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return dermatologist();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Pimples"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                color: Colors.brown[200],
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/wyHnHYc/pimples.png"),
                ),
              ),
            ),
          ),
        ),
      )
    ]);
  }

  Widget cough(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Cough"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/xmmRm0f/cough.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget headache(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Headache"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            maxLines: 1,
                            minFontSize: 8,
                            maxFontSize: 15,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/9hq0BvF/headache.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget piles(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return dermatologist();
              }));
            },
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                      child: Center(
                        child: AutoSizeText(
                          ("Piles"),
                          style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w800),
                          minFontSize: 8,
                          maxFontSize: 15,
                          maxLines: 1,
                        ),
                      ),
                    )
                  ]),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://i.ibb.co/1zp9PmF/hemorrhoids-piles-pain.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget anxiety(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Anxiety"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage(
                      "https://i.ibb.co/z67cfRY/499-4999336-collection-of-psychology-mental-health-clipart-png-transparent-removebg-preview.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget diabetes(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Diabetes"),
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 8,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/qpRPQLF/suger.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget depression(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Stack(children: [
          Container(
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(image)),
            ),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return common();
                }));
              },
              child: Container(
                child: Container(
                    padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                            child: AutoSizeText(
                              ("Depression"),
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w800),
                              minFontSize: 9,
                              maxFontSize: 15,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ])),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.brown[200],
                  image: DecorationImage(
                    fit: BoxFit.contain,
                    image:
                        NetworkImage("https://i.ibb.co/DrG24WW/depression.png"),
                  ),
                ),
              ),
            ),
          )
        ]));
  }

  Widget acidity(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Acidity"),
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 8,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/fXJgwMD/acidity.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget weight_loss(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return physio();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Weight loss"),
                            style: TextStyle(
                                fontSize: 11,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 9,
                            maxFontSize: 15,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image:
                      NetworkImage("https://i.ibb.co/xFsNZXN/weight-loss.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget vomiting(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Vomiting"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/T1KSkyN/vomiting.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget swelling(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return dermatologist();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Swelling"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/PczPyqW/swelling.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget gas(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return common();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Gas"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/rQBbkyH/gas.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget rashes(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return dermatologist();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Rashes"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/T0t1vvX/rashes.png"),
                ),
              ),
            ),
          ),
        ));
  }

  Widget back_pain(image) {
    return AspectRatio(
        aspectRatio: 2.62 / 3,
        child: Container(
          margin: EdgeInsets.only(right: 15.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image)),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute<void>(builder: (BuildContext context) {
                return physio();
              }));
            },
            child: Container(
              child: Container(
                  padding: const EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Center(
                          child: AutoSizeText(
                            ("Back Pain"),
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w800),
                            minFontSize: 10,
                            maxFontSize: 15,
                            maxLines: 1,
                          ),
                        ),
                      ])),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.brown[200],
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: NetworkImage("https://i.ibb.co/tLR212r/back-pain.png"),
                ),
              ),
            ),
          ),
        ));
  }

  void toProcess() async {
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => consultnow(),
        ));
  }
}

class LeaderBoard {
  LeaderBoard(this.username, this.score);

  final String username;
  final double score;
}

class SelectedItemWidget extends StatelessWidget {
  const SelectedItemWidget(this.selectedItem, this.deleteSelectedItem);

  final LeaderBoard selectedItem;
  final VoidCallback deleteSelectedItem;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 2,
        horizontal: 4,
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
              top: 8,
              bottom: 8,
            ),
            child: Text(
              selectedItem.username,
              style: const TextStyle(fontSize: 14),
            ),
          ),
          IconButton(
            icon: Icon(Icons.delete_outline, size: 22),
            color: Colors.grey[700],
            onPressed: deleteSelectedItem,
          ),
        ],
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(this.controller, this.focusNode);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Color.fromRGBO(244, 243, 243, 1),
              borderRadius: BorderRadius.circular(20)),
          child: TextField(
            focusNode: focusNode,
            controller: controller,
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(
                Icons.search,
                color: Colors.black87,
              ),
              hintText: "Search Doctors , Yoga Teachers , Students",
              hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
              hintMaxLines: 2,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class NoItemsFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.folder_open,
          size: 24,
          color: Colors.grey[900].withOpacity(0.7),
        ),
        const SizedBox(width: 10),
        Text(
          "No Items Found",
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[900].withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}

class PopupListItemWidget extends StatelessWidget {
  const PopupListItemWidget(this.item);

  final LeaderBoard item;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Container(
      padding: const EdgeInsets.all(12),
      child: Text(
        item.username,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}

class setting extends StatefulWidget {
  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
  Future<void> _signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } catch (e) {
      print(e); // TODO: show dialog with error
    }
  }

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
        body: SingleChildScrollView(
            child: SafeArea(
                child: Column(children: [
          GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey,
                        title: Text("Confirm Deletion"),
                        content:
                            Text("Are you sure you want to delete Account"),
                        actions: <Widget>[
                          FlatButton(
                            color: Colors.black,
                            child: Text("Ok"),
                            onPressed: () async {
                              await AuthService().deleteUser;
                            },
                          ),
                          FlatButton(
                            color: Colors.black,
                            child: Text("Cancel"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              },
              child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown[200],
                  ),
                  width: double.infinity,
                  height: 80,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
                      child: Center(
                          child: Text(
                        "Delete My Account",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      ))))),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute<void>(builder: (BuildContext context) {
                  return updatepassword();
                }));
              },
              child: Container(
                  margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.brown[200],
                  ),
                  width: double.infinity,
                  height: 80,
                  child: Container(
                      padding: const EdgeInsets.fromLTRB(0, 0, 130, 0),
                      child: Center(
                          child: Text(
                        "Update Password",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w300),
                      ))))),
          GestureDetector(
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blueGrey),
                  height: 60,
                  width: 180,
                  child: Center(
                      child: Text("Sign out",
                          style: TextStyle(
                              fontSize: 23,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w600))),
                ),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        backgroundColor: Colors.blueGrey,
                        title: Text("Confirmation"),
                        content: Text("Are you sure you want to sign out"),
                        actions: <Widget>[
                          FlatButton(
                              color: Colors.black,
                              child: Text("Sign out"),
                              onPressed: () async {
                                SharedPreferences prefs =
                                    await SharedPreferences.getInstance();
                                prefs.remove('email');
                                FirebaseAuth auth = FirebaseAuth.instance;
                                auth.signOut().then((res) {
                                  Navigator.pushAndRemoveUntil(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()),
                                      (Route<dynamic> route) => false);
                                });
                              }),
                          FlatButton(
                            color: Colors.black,
                            child: Text("Cancel"),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    });
              }),
        ]))));
  }
}

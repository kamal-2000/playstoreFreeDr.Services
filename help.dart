import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class help extends StatefulWidget {
  help({Key key, this.title, this.uid})
      : super(key: key); //update this to include the uid in the constructor
  final String title;
  final String uid; //include this
  @override
  _helpState createState() => _helpState();
}

class _helpState extends State<help> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  TextEditingController nameInputController;

  TextEditingController phoneInputController;
  TextEditingController descriptionInputController;
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  TextEditingController confirmPwdInputController;
  FirebaseUser currentUser;
  @override
  initState() {
    nameInputController = new TextEditingController();
    descriptionInputController = new TextEditingController();

    phoneInputController = new TextEditingController();

    emailInputController = new TextEditingController();

    this.getCurrentUser();
    super.initState();
  }

  String emailValidator(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return 'Email format is invalid';
    } else {
      return null;
    }
  }

  String phonenoValidator(String value) {
    if (value.length < 10) {
      return 'Please Enter the Correct Phone Number';
    } else {
      return null;
    }
  }

  void getCurrentUser() async {
    currentUser = await FirebaseAuth.instance.currentUser();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey,
    ));
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: Scaffold());
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child:
            SingleChildScrollView(child: Builder(builder: (BuildContext bc) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter state) {
            return Column(children: [
              Column(children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      boxShadow: [
                        BoxShadow(blurRadius: 5, color: Colors.black)
                      ],
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(30))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                              child: Icon(
                                Icons.cancel,
                                size: 30,
                              ))),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: new Stack(
                                  fit: StackFit.loose,
                                  children: <Widget>[
                                    new Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        new Container(
                                            width: 110.0,
                                            height: 110.0,
                                            decoration: new BoxDecoration(
                                              shape: BoxShape.circle,
                                              image: new DecorationImage(
                                                image: new NetworkImage(
                                                    'https://i.ibb.co/rGRx89Z/helplogo.png'),
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                      ],
                                    ),
                                    /*  Padding(
                                                padding: EdgeInsets.only(
                                                    top: 90.0, right: 100.0),
                                                child: new Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    new CircleAvatar(
                                                      backgroundColor:
                                                          Colors.black,
                                                      radius: 25.0,
                                                      child: new Icon(
                                                        Icons.camera_alt,
                                                        color: Colors.white,
                                                      ),
                                                    )
                                                  ],
                                                )),*/
                                  ]),
                            )
                          ])
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(children: [
                  Container(
                      width: 360,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(blurRadius: 5, color: Colors.black)
                          ],
                          borderRadius: BorderRadius.circular(20)),
                      child: Form(
                        key: _registerFormKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              child: Text(
                                "Tech Support",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Your Name*',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.green),
                                  ),
                                  isDense: true,
                                ),
                                controller: nameInputController,
                                validator: (value) {
                                  if (value.length < 3) {
                                    return "Please enter a valid Full name.";
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Email*',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    )),
                                controller: emailInputController,
                                keyboardType: TextInputType.emailAddress,
                                validator: emailValidator,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Phone Number*',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    )),
                                controller: phoneInputController,
                                keyboardType: TextInputType.number,
                                validator: phonenoValidator,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(10),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              height: 100,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Problem Description*',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    )),
                                controller: descriptionInputController,
                                keyboardType: TextInputType.multiline,
                                maxLines: 50,
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            ButtonTheme(
                              minWidth: 200.0,
                              height: 50.0,
                              child: RaisedButton(
                                child: Text(
                                  "Send Message",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                color: Colors.blueGrey,
                                textColor: Colors.black,
                                onPressed: () {
                                  if (_registerFormKey.currentState
                                      .validate()) {
                                    Scaffold.of(context).showSnackBar(
                                      new SnackBar(
                                        backgroundColor: Colors.blueGrey,
                                        content: new Text(
                                          'Our Executive will contact you shortly',
                                          style: TextStyle(
                                            fontSize: 13,
                                          ),
                                        ),
                                        duration: Duration(seconds: 4),
                                      ),
                                    );
                                    Firestore.instance
                                        .collection("help")
                                        .document(currentUser.email)
                                        .collection('tasks')
                                        .add({
                                      "name": nameInputController.text,
                                      "email": emailInputController.text,
                                      "phone": phoneInputController.text,
                                      "description":
                                          descriptionInputController.text
                                    }).catchError((err) => print(err));
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                ]),
                SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Container(
                      child: Text(
                        "Connect with",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                    ),
                    SizedBox(height: 5),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
                        ),
                        FloatingActionButton(
                          tooltip: "Instagram",
                          heroTag: "btn1",
                          child: Image(
                            image: NetworkImage(
                                "https://i.ibb.co/cLPC4Dm/instalogo.png"),
                          ),
                          onPressed: () {
                            _launchInsta();
                          },
                        ),
                        Spacer(),
                        FloatingActionButton(
                          tooltip: "Facebook",
                          heroTag: "btn2",
                          child: Image(
                            image: NetworkImage(
                                "https://i.ibb.co/rHC96z9/facebooklogo.png"),
                          ),
                          onPressed: () {
                            _launchfacebook();
                          },
                        ),
                        Spacer(),
                        FloatingActionButton(
                          tooltip: "Twitter",
                          heroTag: "btn3",
                          child: Image(
                            image: NetworkImage(
                                "https://i.ibb.co/KbTkXfP/twitterlogo.png"),
                          ),
                          onPressed: () {
                            _launchtwitter();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 0, 90, 0),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                )
              ])
            ]);
          });
        }))));
  }

  _launchInsta() async {
    final String googleMapsUrl = "https://www.instagram.com/freedr.services/";
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw "Couldn't launch URL";
    }
  }

  _launchtwitter() async {
    final String googleMapsUrl = "https://twitter.com/FreeDrService1";
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw "Couldn't launch URL";
    }
  }

  _launchfacebook() async {
    final String googleMapsUrl =
        "https://www.facebook.com/FreeDrServices-112334124242063";
    if (await canLaunch(googleMapsUrl)) {
      await launch(googleMapsUrl);
    } else {
      throw "Couldn't launch URL";
    }
  }
}

import 'consultnow.dart';
import 'forgetpassword.dart';
import 'register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class updatepassword extends StatefulWidget {
  @override
  _updatepasswordState createState() => _updatepasswordState();
}

class _updatepasswordState extends State<updatepassword> {
  String email = "";
  final auth = FirebaseAuth.instance;

  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey,
    ));
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
        body: SafeArea(child:
            SingleChildScrollView(child: Builder(builder: (BuildContext bc) {
          return StatefulBuilder(
              builder: (BuildContext context, StateSetter state) {
            return Column(children: [
              Column(children: [
                Container(),
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
                      child: SingleChildScrollView(
                          child: Form(
                        key: _FormKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              child: Text(
                                "Update your password",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Container(
                              child: Text(
                                "We will send you an email to Update your password",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.grey),
                              ),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                onChanged: (val) {
                                  setState(() {
                                    email = val;
                                  });
                                },
                                validator: (String val) {
                                  if (val.length == 0) {
                                    return "Please enter your Email-Id";
                                  }
                                },
                                decoration: InputDecoration(
                                  labelText: 'Email*',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.green),
                                  ),
                                  isDense: true,
                                ),
                                keyboardType: TextInputType.emailAddress,
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
                                    "Email me",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black),
                                  ),
                                  color: Theme.of(context).primaryColor,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    if (_FormKey.currentState.validate() &&
                                        _FormKey.currentState.validate()) {
                                      auth
                                          .sendPasswordResetEmail(email: email)
                                          .then((value) =>
                                              _showNewVersionAvailableDialog1(
                                                  context))
                                          .catchError((e) =>
                                              _showNewVersionAvailableDialog(
                                                  context))
                                          .catchError((err) =>
                                              print("email is already exists"));
                                    }
                                  }),
                            )
                          ],
                        ),
                      )))
                ]),
                SizedBox(
                  height: 50,
                )
              ])
            ]);
          });
        }))));
  }

  void _showNewVersionAvailableDialog(BuildContext context) {
    final alert = AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Text("Error"),
      content: Text("Sorry, This email is not Registered"),
      actions: [
        FlatButton(
            color: Colors.black,
            child: Text(
              "OK",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void _showNewVersionAvailableDialog1(BuildContext context) {
    final alert = AlertDialog(
      backgroundColor: Colors.blueGrey,
      title: Text("Sucess Message"),
      content:
          Text("A Reset password link has been sent to your email account"),
      actions: [
        FlatButton(
            color: Colors.black,
            child: Text(
              "OK",
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {
              Navigator.pop(context);
            })
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}

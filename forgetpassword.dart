import 'consultnow.dart';
import 'forgetpassword.dart';
import 'login.dart';
import 'register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';

class forgetpassword extends StatefulWidget {
  @override
  _forgetpasswordState createState() => _forgetpasswordState();
}

String emailValidator(String value) {
  if (value.length == 0) {
    return 'Please enter your Email Id';
  } else {
    return null;
  }
}

class _forgetpasswordState extends State<forgetpassword> {
  String email = "";
  final auth = FirebaseAuth.instance;

  final GlobalKey<FormState> _FormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey,
    ));
    return Scaffold(body: SafeArea(
        child: SingleChildScrollView(child: Builder(builder: (BuildContext bc) {
      return StatefulBuilder(
          builder: (BuildContext context, StateSetter state) {
        return Column(children: [
          Column(children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black)],
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(
                            Icons.cancel,
                            size: 30,
                          ))),
                  Container(
                      height: 130,
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(60),
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: AssetImage(
                            'assets/logo.png',
                          ),
                        ),
                      )),
                ],
              ),
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
                            "Reset your password",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          child: Text(
                            "We will send you an email to reset your password",
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
                            validator: emailValidator,
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
                                if (_FormKey.currentState.validate()) {
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

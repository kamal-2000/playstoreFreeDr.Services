import 'consultnow.dart';
import 'demo.dart';
import 'forgetpassword.dart';
import 'register.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.uid}) : super(key: key);

  final String uid;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  FirebaseUser currentUser;

  @override
  initState() {
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    this.getCurrentUser();
    super.initState();
  }

  final spinkit = SpinKitFadingFour(
    color: Colors.white,
    size: 50.0,
  );
  void getCurrentUser() async {
    currentUser = await FirebaseAuth.instance.currentUser();
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

  String pwdValidator(String value) {
    if (value.length < 6) {
      return 'Password must be longer than 6 characters';
    } else {
      return null;
    }
  }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
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
            Container(
              width: 250,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [BoxShadow(blurRadius: 3, color: Colors.black)],
              ),
              child: GestureDetector(
                child: Center(
                  child: Text(
                    "Sign Up with FreeDr.Services",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => RegisterPage()));
                },
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
                    key: _loginFormKey,
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          child: Text(
                            "Login to your Account ",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 330,
                          child: TextFormField(
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
                            controller: emailInputController,
                            keyboardType: TextInputType.emailAddress,
                            validator: emailValidator,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          width: 330,
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: 'Password*',
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(25)),
                                borderSide: const BorderSide(
                                    width: 1, color: Colors.green),
                              ),
                              isDense: true,
                            ),
                            controller: pwdInputController,
                            obscureText: true,
                            validator: pwdValidator,
                          ),
                        ),
                        Container(
                            padding: const EdgeInsets.fromLTRB(170, 0, 0, 0),
                            child: FlatButton(
                              child: Text("Forget Password ?"),
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            forgetpassword()));
                              },
                            )),
                        SizedBox(
                          height: 0,
                        ),
                        ButtonTheme(
                          minWidth: 200.0,
                          height: 50.0,
                          child: RaisedButton(
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            color: Theme.of(context).primaryColor,
                            textColor: Colors.white,
                            onPressed: () {
                              if (_loginFormKey.currentState.validate()) {
                                Scaffold.of(context).showSnackBar(
                                  new SnackBar(
                                    backgroundColor: Colors.blueGrey,
                                    content: new Text(
                                      'Please wait your HomePage is Loading',
                                      style: TextStyle(
                                        fontSize: 13,
                                      ),
                                    ),
                                  ),
                                );
                                FirebaseAuth.instance
                                    .signInWithEmailAndPassword(
                                        email: emailInputController.text,
                                        password: pwdInputController.text)
                                    .then((currentUser) => Firestore.instance
                                        .collection("users")
                                        .document(currentUser.user.email)
                                        .get()
                                        .then((value) async {
                                          SharedPreferences prefs =
                                              await SharedPreferences
                                                  .getInstance();
                                          prefs.setString('email',
                                              emailInputController.text);
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      HomePage()));
                                        })
                                        .then(
                                          (DocumentSnapshot result) =>
                                              Navigator.pushReplacement(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          HomePage())),
                                        )
                                        .catchError((err) => print(err)))
                                    .catchError((err) {
                                  final snackBar = SnackBar(
                                      backgroundColor: Colors.blueGrey,
                                      duration: Duration(seconds: 4),
                                      content: Text(
                                        'Invalid Id or Password',
                                        style: TextStyle(fontSize: 13),
                                      ));
                                  Scaffold.of(context).showSnackBar(snackBar);
                                });
                              }
                            },
                          ),
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

  Widget kamal() {
    final snackBar = SnackBar(content: Text("kamal"));
    Scaffold.of(context).showSnackBar(snackBar);
  }
}

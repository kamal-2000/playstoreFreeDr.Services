import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(60),
            ),
          ),
          child: ListView(
            children: <Widget>[
              Container(
                height: 300,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/logo.png'))),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.person), onPressed: null),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(right: 20, left: 10),
                            child: TextField(
                              decoration: InputDecoration(hintText: 'Username'),
                            )))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.lock), onPressed: null),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.only(right: 20, left: 10),
                            child: TextField(
                              decoration: InputDecoration(hintText: 'Password'),
                            ))),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: Container(
                    height: 60,
                    child: RaisedButton(
                      onPressed: () {},
                      color: Colors.blueGrey,
                      child: Text(
                        'PROCEED',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ));
  }
}

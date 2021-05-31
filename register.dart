import 'package:checkbox_formfield/checkbox_icon_formfield.dart';
import 'package:checkbox_formfield/checkbox_list_tile_formfield.dart';
import 'demo.dart';
import 'login.dart';

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();
  TextEditingController firstNameInputController;
  TextEditingController lastNameInputController;
  TextEditingController phonenoInputController;
  TextEditingController cityInputController;
  TextEditingController stateInputController;
  TextEditingController emailInputController;
  TextEditingController pwdInputController;
  TextEditingController confirmPwdInputController;

  @override
  initState() {
    firstNameInputController = new TextEditingController();
    lastNameInputController = new TextEditingController();
    phonenoInputController = new TextEditingController();
    cityInputController = new TextEditingController();
    stateInputController = new TextEditingController();
    emailInputController = new TextEditingController();
    pwdInputController = new TextEditingController();
    confirmPwdInputController = new TextEditingController();
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

  String pwdValidator(String value) {
    if (value.length < 6) {
      return 'Password must be longer than 6 characters';
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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey,
    ));
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
                      Container(
                          height: 130,
                          padding: EdgeInsets.all(10),
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
                        "Login with FreeDr.Services",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w600),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => LoginPage()));
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
                      child: Form(
                        key: _registerFormKey,
                        child: Column(
                          children: <Widget>[
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Text(
                                "Create a new Account",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  labelText: 'Full Name*',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(25)),
                                    borderSide: const BorderSide(
                                        width: 1, color: Colors.green),
                                  ),
                                  isDense: true,
                                ),
                                controller: firstNameInputController,
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
                                    labelText: 'Phone Number*',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    )),
                                controller: phonenoInputController,
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
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'State*',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                      )),
                                  controller: stateInputController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value.length == 0) {
                                      return "Please enter a valid State.";
                                    }
                                  }),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                  decoration: InputDecoration(
                                      labelText: 'City*',
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(25)),
                                      )),
                                  controller: cityInputController,
                                  keyboardType: TextInputType.emailAddress,
                                  validator: (value) {
                                    if (value.length == 0) {
                                      return "Please enter a valid City.";
                                    }
                                  }),
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
                                    labelText: 'Password*',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    )),
                                controller: pwdInputController,
                                obscureText: true,
                                validator: pwdValidator,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: 330,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Confirm Password*',
                                    border: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(25)),
                                    )),
                                controller: confirmPwdInputController,
                                obscureText: true,
                                validator: pwdValidator,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            CheckboxListTileFormField(
                              title: FlatButton(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 0, 140, 0),
                                child: Text("Terms & Conditions"),
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return AlertDialog(
                                          scrollable: true,
                                          backgroundColor: Colors.blueGrey,
                                          title: Image.asset(
                                            "assets/logo.png",
                                            height: 120,
                                          ),
                                          content: Text(
                                              "Terms of Use\n\nPLEASE READ THESE TERMS OF USE CAREFULLY. BY CONTINUING TO ACCESS AND USE THIS APPLICATION YOU CONFIRM THAT YOU ACCEPT OUR TERMS AND CONDITIONS DESCRIBED HEREIN. IF YOU DO NOT AGREE THE TERMS OF USE, DO NOT USE THIS APPLICATION.\n\n Welcome to FreeDr.Services mobile Application. The Application is operated by FreeDr.Services Team. \n \nThe terms “You” or “Your” refer to you as the user (irrespective of whether You are a Registered User  or a Non-Registered User. In the event the Application is being used by a person on your behalf, the expression “You” or “Your” or the “User” shall apply to such person as well. \n\nThese Terms of Use, Privacy Policy, together with any additional Service specific terms and conditions, other policies which may be applicable to specific portions of the Application and any disclaimers which may be present on the Application are jointly referred to as “Agreement” and constitute the terms of Your access and use of the Application and the Services. Where any part of the Agreement is modified in accordance with the terms of the Agreement, the Agreement shall be enforceable in its modified form. \n\nThe Agreement supersedes all previous oral and written terms and conditions (if any) communicated to You.\n\nTHE APPLICATION\n\nThis app is a student initiative\nIt's an free doctor organization and this app would provide free consultancy to the patients from the reputed doctors of various cities via  video consultations.\nIt is a health app where you can ask a doctor free health questions and get expert answers to your health queries with the largest network of doctors and healthcare providers from top clinics and hospitals.\nAsk a doctor about your health concerns over a private call, chat, or video consultation. Free Doctor services also promises other benefits such as 100% safe and secure online medical consultations, online doctor appointment booking from the comfort of your home.\nHealthcare providers can also harness the power of Free Doctor services as the definitive platform that helps them build their presence, grow establishments and engage patients more deeply than ever. The guidence you receive depends on the accuracy of the information you provide as well as current guidelines for responding to symptoms associated with the novel coronavirus COVID-19.\n\nUSERS\n\n “Registered Users” are users:\nwho have successfully registered themselves through the Application by providing information that is true and accurate, and who can log on to their account on the Application by providing their username and pasword .\nThe Application providing Doctors and students (Providers)”includes qualified doctors such as Gynecologist, Dermatologist, Orthopedic, Dentist and General Physician listed on the Application and who interacts with Users as part of the Services.\n\n “Non-Registered Users” are users who have not registered themselves on the Application. Non-Registered Users may not be provided access to certain areas of the Application.\n\n ACCESS AND USAGE RIGHTS OF USERS\n\nNon - Registered User: A Non - Registered User is not permitted to access or make use of the Application for any purpose other than the following permitted use:\nTo browse the Application without accessing any Services;\nTo share the Application via social media applications.\n\nRegistered User: A Registered User is specifically permitted to:\n\nEnjoy all the access and usage rights of a Non-Registered User.\nAccess and use the Services subject to such limitations and restrictions as are prescribed under the Agreement or may be otherwise communicated to Registered User from time to time through any contact information shared by such user at the time of registration.\n\nGENERAL TERMS OF USE\n\nAs required by law, You must be at least 18 years of age or older, have a sound mind and not debarred by any law to contract in order to access and use the Application. \n\nYou will use the Application and the features provided on the Application only in relation to and in compliance with all applicable Indian laws. You will not use this Application, or any feature provided on the Application for any purposes not intended under this Agreement.\n\nYou should limit the use of this Application to India only. We are not responsible if You avail any Service from outside India.\n\nYou will not deliberately use the Application in any way that is unlawful or harms its directors, employees, affiliates, distributors, partners, service providers and/or any User and/or data or content on the Application.\n\nYou will not use the Application for any illegal, immoral, offensive purpose or for any other purpose that may infringe or violate any applicable laws and regulations.\n\nYou will not interfere, disrupt or hamper with the proper functioning of the Application.\n\nAs a User, You may have access to business sensitive information. You shall not share such information with competitors or use it for competitive purposes.\n\nIt is Your responsibility to ensure that You provide the correct contact details You wish to enter.. \n\nYou will not share Your log-in details with anyone. You are responsible for maintaining the confidentiality of Your account access information and password. You shall be responsible for all usage of Your account and password, whether or not authorized by You. You shall immediately notify us for suspected unauthorized use of the Your account or password. We will not be liable for Your losses caused by any unauthorized use of Your account. You may be liable for the losses due to such unauthorized use.\n\nSERVICES\n\nThe Application may be used to access a variety of healthcare and related services. Depending on the status of Your registration and subject to the limitations and restrictions imposed by the Agreement or by NTHS, You may avail following services through the Application:\n\nGynecologist\n\nDermatologist\n\nGeneral Physician\n\nOrthopedic\n\nDentist\n\nOnline Consultations\n\nYou are advised not to use the online consultation services in case of any medical emergencies like accidents, bleeding injuries, burns, sexual abuse/assault, medicolegal cases or if You are in a critical condition.\n\nIf You are a Registered User but do not satisfy the above pre-conditions, please do not avail the online consultation services. We will not be responsible or liable for any harm or loss that You may suffer if You elect to access those Services.\n\nUSER RESPONSIBILITIES\n\nYour use of this Application shall be subjected to the following terms and conditions:\n\n1.You will observe and comply with the terms and conditions of the Agreement in letter and spirit;\n2.You will provide full and accurate information about Your health, medical history and personal care needs;\n3. You will not host, display, upload, modify, publish, transmit, update or share any information that:\nbelongs to another person and over which You does not have sufficient legal rights;\nis grossly harmful, harassing, blasphemous defamatory, obscene, pornographic, paedophilic, libellous, invasive of another’s privacy, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or gambling, or otherwise unlawful in any manner whatever;\nharm minors in any way;\ninfringes any patent, trademark, copyright or other proprietary rights(se), violates any law for the time being in force;\ndeceives or misleads the addressee about the origin of such messages or communicates any information which is grossly offensive or menacing in nature;\nimpersonate another person;\ncontains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer resource;\nthreatens the unity, integrity, defence, security or sovereignty of India, friendly relations with foreign states, or public order or causes incitement to the commission of any cognizable offence or prevents investigation of any offence or is insulting any other nation.\n\nActions taken \n\nSuspend provision of Services; and/or\nSuspend the account of the User until there is enough information available with  to determine whether the User had violated a term or condition of this Agreement; and/or\nSuspend or terminate the account of the User where it is  determined that the User had violated a term or condition of this Agreement; and/or\nApproach User to make good that loss  as a pre-condition to revoke the suspension; and/or\nTake any such action against the User as it permissible under law; and/or\nRaise invoice of Services availed by the User; and/or\nDisable and/or delete such User Content that is in contravention of the Agreement while preserving such information and associated records for the purpose of production to governmental authorities for investigation purposes.\n\nREPRESENTATIONS AND WARRANTIES\n\nBy Using This Application, You hereby represent and warrant that:You are 18 years of age or older and that Your use of the Application shall not violate any applicable law or regulation;\n\nAll registration information You submit is truthful and accurate and that You agree to maintain the accuracy of such information;\nYou as a Registered User will use the Application solely for Your personal and non-commercial use. Any use of this Application or its content other than for personal purposes is strictly prohibited."),
                                          actions: <Widget>[
                                            Center(
                                                child: FlatButton(
                                              color: Colors.black,
                                              child: Text("Ok"),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                              },
                                            ))
                                          ],
                                        );
                                      });
                                },
                              ),
                              onSaved: (bool value) {},
                              validator: (bool value) {
                                if (value) {
                                  return null;
                                } else {
                                  return 'Please accept Terms & Conditions';
                                }
                              },
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            ButtonTheme(
                              minWidth: 200.0,
                              height: 50.0,
                              child: RaisedButton(
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                color: Colors.blueGrey,
                                textColor: Colors.black,
                                onPressed: () {
                                  if (_registerFormKey.currentState
                                      .validate()) {
                                    if (pwdInputController.text ==
                                        confirmPwdInputController.text) {
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
                                          .createUserWithEmailAndPassword(
                                              email: emailInputController.text,
                                              password: pwdInputController.text)
                                          .then((currentUser) {
                                        Firestore.instance
                                            .collection("users")
                                            .document(currentUser.user.uid)
                                            .setData({
                                              "uid": currentUser.user.uid,
                                              "fname":
                                                  firstNameInputController.text,
                                              "email":
                                                  emailInputController.text,
                                              "password":
                                                  pwdInputController.text,
                                              "phoneNo":
                                                  phonenoInputController.text,
                                              "state":
                                                  stateInputController.text,
                                              "city": cityInputController.text,
                                            })
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
                                            .then((result) => {
                                                  Navigator.pushAndRemoveUntil(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              HomePage()),
                                                      (_) => false),
                                                  firstNameInputController
                                                      .clear(),
                                                  lastNameInputController
                                                      .clear(),
                                                  emailInputController.clear(),
                                                  pwdInputController.clear(),
                                                  confirmPwdInputController
                                                      .clear()
                                                })
                                            .catchError((err) => print(err));
                                      }).catchError((err) {
                                        final snackBar = SnackBar(
                                            backgroundColor: Colors.blueGrey,
                                            duration: Duration(seconds: 4),
                                            content: Text(
                                              'This Email is already exist',
                                              style: TextStyle(fontSize: 13),
                                            ));
                                        Scaffold.of(context)
                                            .showSnackBar(snackBar);
                                      });
                                    } else {
                                      showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor: Colors.blueGrey,
                                              title: Text("Error"),
                                              content: Text(
                                                  "The passwords do not match"),
                                              actions: <Widget>[
                                                FlatButton(
                                                  color: Colors.black,
                                                  child: Text("Close"),
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                )
                                              ],
                                            );
                                          });
                                    }
                                  }
                                },
                              ),
                            ),
                          ],
                        ),
                      )),
                ]),
                SizedBox(
                  height: 10,
                )
              ])
            ]);
          });
        }))));
  }
}

import 'package:flutter/material.dart';

class aboutus extends StatefulWidget {
  @override
  _aboutusState createState() => _aboutusState();
}

class _aboutusState extends State<aboutus> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "FreeDr.Services",
        debugShowCheckedModeBanner: false,
        debugShowMaterialGrid: false,
        home: Scaffold(
            body: Scaffold(
                backgroundColor: Color.fromRGBO(244, 243, 243, 1),
                appBar: AppBar(
                  iconTheme: IconThemeData(color: Colors.black),
                  backgroundColor: Colors.blueGrey,
                  brightness: Brightness.light,
                  elevation: 0,
                  leading: new IconButton(
                    icon: new Icon(Icons.arrow_back),
                    onPressed: () {
                      Navigator.pop(
                        context,
                      );
                    },
                  ),
                  title: Center(
                      child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 30, 48, 0),
                    child: Image(
                      image: AssetImage("assets/logo1.png"),
                      height: 180,
                    ),
                  )),
                ),
                body: SafeArea(
                    child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                          margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.brown[200],
                            boxShadow: [BoxShadow(blurRadius: 12)],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                              height: 130,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                image: AssetImage("assets/logo.png"),
                              )),
                            ),
                            Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(children: [
                                    Flexible(
                                        fit: FlexFit.tight,
                                        child: Container(
                                          margin: const EdgeInsets.fromLTRB(
                                              20, 0, 10, 0),
                                          child: Center(
                                              child: SingleChildScrollView(
                                            scrollDirection: Axis.vertical,
                                            child: Text(
                                              "It’s easy to point out the flaws and imperfections present all around us. It’s much more difficult to look inward and decide to change ourselves. The first step is always your own.\n\n In the world, where everyone is running after money and everyone is busy in making profits, FreeDr.Services have come up with an idea of  providing free  consultancy with doctors, yoga teachers as well as student's opinions from medical field to each and every people of our country.\n\nFreeDr.Services brings in free and continuous connectivity with top doctors who are willing to help people without any personal benefit.\nWe strongly believe getting to your trusted doctor should not be as expensive and time taking as it is today.\nGetting an appointment, paying huge for a single appointment, waiting at the clinic, going back to clinic again and again for the same problem etc-- definately not a caring experience! \nWith a combination of new age technology , our personal knowledge and help of doctors, medical learning students, we designed free dr services keeping consumer experience at it's core.\nWe keep track of your health, we will connect you and doctors according to your need and doctors availability. \n\nContacting a doctor is just  one click away. A Mobile app, is all what you need to get online appointment with the doctor.\nThis is best for you, to get the right care whenever you need.\nNow, money is not at all a barrier in your life, for a good health. Feel free to contact, we are here, always and anytime.\nWe believe in-\n \nNO ONE CAN HELP EVERYONE, BUT EVERYONE CAN HELP SOMEONE",
                                            ),
                                          )),
                                        ))
                                  ]),
                                  SizedBox(height: 10)
                                ])
                          ]))
                    ],
                  ),
                )))));
  }
}

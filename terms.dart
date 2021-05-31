import 'package:flutter/material.dart';

class terms extends StatefulWidget {
  @override
  _termsState createState() => _termsState();
}

class _termsState extends State<terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: SingleChildScrollView(
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
                                  margin:
                                      const EdgeInsets.fromLTRB(20, 0, 10, 0),
                                  child: Center(
                                      child: SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Text(
                                      "Terms of Use\n\nPLEASE READ THESE TERMS OF USE CAREFULLY. BY CONTINUING TO ACCESS AND USE THIS APPLICATION YOU CONFIRM THAT YOU ACCEPT OUR TERMS AND CONDITIONS DESCRIBED HEREIN. IF YOU DO NOT AGREE THE TERMS OF USE, DO NOT USE THIS APPLICATION.\n\n Welcome to FreeDr.Services mobile Application. The Application is operated by FreeDr.Services Team. \n \nThe terms “You” or “Your” refer to you as the user (irrespective of whether You are a Registered User  or a Non-Registered User. In the event the Application is being used by a person on your behalf, the expression “You” or “Your” or the “User” shall apply to such person as well. \n\nThese Terms of Use, Privacy Policy, together with any additional Service specific terms and conditions, other policies which may be applicable to specific portions of the Application and any disclaimers which may be present on the Application are jointly referred to as “Agreement” and constitute the terms of Your access and use of the Application and the Services. Where any part of the Agreement is modified in accordance with the terms of the Agreement, the Agreement shall be enforceable in its modified form. \n\nThe Agreement supersedes all previous oral and written terms and conditions (if any) communicated to You.\n\nTHE APPLICATION\n\nThis app is a student initiative\nIt's an free doctor organization and this app would provide free consultancy to the patients from the reputed doctors of various cities via  video consultations.\nIt is a health app where you can ask a doctor free health questions and get expert answers to your health queries with the largest network of doctors and healthcare providers from top clinics and hospitals.\nAsk a doctor about your health concerns over a private call, chat, or video consultation. Free Doctor services also promises other benefits such as 100% safe and secure online medical consultations, online doctor appointment booking from the comfort of your home.\nHealthcare providers can also harness the power of Free Doctor services as the definitive platform that helps them build their presence, grow establishments and engage patients more deeply than ever. The guidence you receive depends on the accuracy of the information you provide as well as current guidelines for responding to symptoms associated with the novel coronavirus COVID-19.\n\nUSERS\n\n “Registered Users” are users:\nwho have successfully registered themselves through the Application by providing information that is true and accurate, and who can log on to their account on the Application by providing their username and pasword .\nThe Application providing Doctors and students (Providers)”includes qualified doctors such as Gynecologist, Dermatologist, Orthopedic, Dentist and General Physician listed on the Application and who interacts with Users as part of the Services.\n\n “Non-Registered Users” are users who have not registered themselves on the Application. Non-Registered Users may not be provided access to certain areas of the Application.\n\n ACCESS AND USAGE RIGHTS OF USERS\n\nNon - Registered User: A Non - Registered User is not permitted to access or make use of the Application for any purpose other than the following permitted use:\nTo browse the Application without accessing any Services;\nTo share the Application via social media applications.\n\nRegistered User: A Registered User is specifically permitted to:\n\nEnjoy all the access and usage rights of a Non-Registered User.\nAccess and use the Services subject to such limitations and restrictions as are prescribed under the Agreement or may be otherwise communicated to Registered User from time to time through any contact information shared by such user at the time of registration.\n\nGENERAL TERMS OF USE\n\nAs required by law, You must be at least 18 years of age or older, have a sound mind and not debarred by any law to contract in order to access and use the Application. \n\nYou will use the Application and the features provided on the Application only in relation to and in compliance with all applicable Indian laws. You will not use this Application, or any feature provided on the Application for any purposes not intended under this Agreement.\n\nYou should limit the use of this Application to India only. We are not responsible if You avail any Service from outside India.\n\nYou will not deliberately use the Application in any way that is unlawful or harms its directors, employees, affiliates, distributors, partners, service providers and/or any User and/or data or content on the Application.\n\nYou will not use the Application for any illegal, immoral, offensive purpose or for any other purpose that may infringe or violate any applicable laws and regulations.\n\nYou will not interfere, disrupt or hamper with the proper functioning of the Application.\n\nAs a User, You may have access to business sensitive information. You shall not share such information with competitors or use it for competitive purposes.\n\nIt is Your responsibility to ensure that You provide the correct contact details You wish to enter.. \n\nYou will not share Your log-in details with anyone. You are responsible for maintaining the confidentiality of Your account access information and password. You shall be responsible for all usage of Your account and password, whether or not authorized by You. You shall immediately notify us for suspected unauthorized use of the Your account or password. We will not be liable for Your losses caused by any unauthorized use of Your account. You may be liable for the losses due to such unauthorized use.\n\nSERVICES\n\nThe Application may be used to access a variety of healthcare and related services. Depending on the status of Your registration and subject to the limitations and restrictions imposed by the Agreement or by NTHS, You may avail following services through the Application:\n\nGynecologist\n\nDermatologist\n\nGeneral Physician\n\nOrthopedic\n\nDentist\n\nOnline Consultations\n\nYou are advised not to use the online consultation services in case of any medical emergencies like accidents, bleeding injuries, burns, sexual abuse/assault, medicolegal cases or if You are in a critical condition.\n\nIf You are a Registered User but do not satisfy the above pre-conditions, please do not avail the online consultation services. We will not be responsible or liable for any harm or loss that You may suffer if You elect to access those Services.\n\nUSER RESPONSIBILITIES\n\nYour use of this Application shall be subjected to the following terms and conditions:\n\n1.You will observe and comply with the terms and conditions of the Agreement in letter and spirit;\n2.You will provide full and accurate information about Your health, medical history and personal care needs;\n3. You will not host, display, upload, modify, publish, transmit, update or share any information that:\nbelongs to another person and over which You does not have sufficient legal rights;\nis grossly harmful, harassing, blasphemous defamatory, obscene, pornographic, paedophilic, libellous, invasive of another’s privacy, hateful, or racially, ethnically objectionable, disparaging, relating or encouraging money laundering or gambling, or otherwise unlawful in any manner whatever;\nharm minors in any way;\ninfringes any patent, trademark, copyright or other proprietary rights(se), violates any law for the time being in force;\ndeceives or misleads the addressee about the origin of such messages or communicates any information which is grossly offensive or menacing in nature;\nimpersonate another person;\ncontains software viruses or any other computer code, files or programs designed to interrupt, destroy or limit the functionality of any computer resource;\nthreatens the unity, integrity, defence, security or sovereignty of India, friendly relations with foreign states, or public order or causes incitement to the commission of any cognizable offence or prevents investigation of any offence or is insulting any other nation.\n\nActions taken \n\nSuspend provision of Services; and/or\nSuspend the account of the User until there is enough information available with  to determine whether the User had violated a term or condition of this Agreement; and/or\nSuspend or terminate the account of the User where it is  determined that the User had violated a term or condition of this Agreement; and/or\nApproach User to make good that loss  as a pre-condition to revoke the suspension; and/or\nTake any such action against the User as it permissible under law; and/or\nRaise invoice of Services availed by the User; and/or\nDisable and/or delete such User Content that is in contravention of the Agreement while preserving such information and associated records for the purpose of production to governmental authorities for investigation purposes.\n\nREPRESENTATIONS AND WARRANTIES\n\nBy Using This Application, You hereby represent and warrant that:You are 18 years of age or older and that Your use of the Application shall not violate any applicable law or regulation;\n\nAll registration information You submit is truthful and accurate and that You agree to maintain the accuracy of such information;\nYou as a Registered User will use the Application solely for Your personal and non-commercial use. Any use of this Application or its content other than for personal purposes is strictly prohibited.",
                                    ),
                                  )),
                                ))
                          ]),
                          SizedBox(height: 10)
                        ])
                  ]))
            ],
          ),
        ));
  }
}

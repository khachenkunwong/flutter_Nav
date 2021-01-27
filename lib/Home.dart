import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:Nanglea/language/th/Item.dart';
import 'package:Nanglea/language/th/Item_list.dart';
import 'package:Nanglea/language/th/Map.dart';
import 'package:Nanglea/language/th/Travel_items.dart';
import 'package:flutter/services.dart';

import 'language/th/tap.dart' as th;
import 'language/en/tap.dart' as en;
import 'language/jp/tap.dart' as jp;
import 'language/ch/tap.dart' as ch;
import 'language/ko/tap.dart' as ko;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homelanguage_1(),
    );
  }
}

class Homelanguage_1 extends StatefulWidget {
  @override
  _Homelanguage_1State createState() => _Homelanguage_1State();
}

class _Homelanguage_1State extends State<Homelanguage_1> {
  navigate_th(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      //pushAndRemoveUntil ไปหน้าต่อไปโดยไม่โดยกดย้อนกลับไม่ได้
      context,
      CupertinoPageRoute(
          builder: (context) =>
              th.Tapp()), //CupertinoPageRoute คลิกไปหน้าต่อไปเเล้วซะไลขว้า
          (Route<dynamic> route) => false,
    );
  }

  navigate_en(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      //pushAndRemoveUntil ไปหน้าต่อไปโดยไม่โดยกดย้อนกลับไม่ได้
      context,
      CupertinoPageRoute(
          builder: (context) =>
              en.Tapp()), //CupertinoPageRoute คลิกไปหน้าต่อไปเเล้วซะไลขว้า
          (Route<dynamic> route) => false,
    );
  }

  navigate_jp(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      //pushAndRemoveUntil ไปหน้าต่อไปโดยไม่โดยกดย้อนกลับไม่ได้
      context,
      CupertinoPageRoute(
          builder: (context) =>
              jp.Tapp()), //CupertinoPageRoute คลิกไปหน้าต่อไปเเล้วซะไลขว้า
          (Route<dynamic> route) => false,
    );
  }

  navigate_ch(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      //pushAndRemoveUntil ไปหน้าต่อไปโดยไม่โดยกดย้อนกลับไม่ได้
      context,
      CupertinoPageRoute(
          builder: (context) =>
              ch.Tapp()), //CupertinoPageRoute คลิกไปหน้าต่อไปเเล้วซะไลขว้า
          (Route<dynamic> route) => false,
    );
  }

  navigate_ko(BuildContext context) {
    Navigator.pushAndRemoveUntil(
      //pushAndRemoveUntil ไปหน้าต่อไปโดยไม่โดยกดย้อนกลับไม่ได้
      context,
      CupertinoPageRoute(
          builder: (context) =>
              ko.Tapp()), //CupertinoPageRoute คลิกไปหน้าต่อไปเเล้วซะไลขว้า
          (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: SafeArea(
            child: Center(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Container(
                        width: 350.0,
                        height: 230.0,
                        child: Image.asset("assets/images/icon_nanglae_logo.png"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text(
                        "Welcome to Nanglae",
                        style: TextStyle(
                            fontFamily: "Arial",
                            fontSize: 20.00,
                            color: const Color(0xff0990b7),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SizedBox(
                        width: 250.0,
                        height: 50.0,
                        child: CupertinoButton.filled(
                          //color: const Color(0xff4990e2),
                            child: Text(
                              "ภาษาไทย",
                              textAlign: TextAlign.center,
                              style: TextStyle(

                                  fontFamily: "Arial",
                                  fontSize: 20.00,
                                  color: Colors.white),
                            ),
                            onPressed: () => navigate_th(context)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SizedBox(
                        width: 250.0,
                        height: 50.0,
                        child: CupertinoButton.filled(
                          //color: const Color(0xff4990e2),
                            child: Text(
                              "English",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: 20.00,
                                  color: Colors.white),
                            ),
                            onPressed: () => navigate_en(context)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SizedBox(
                        width: 250.0,
                        height: 50.0,
                        child: CupertinoButton.filled(
                          //color: const Color(0xff4990e2),
                            child: Text(
                              "日本語",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: 20.00,
                                  color: Colors.white),
                            ),
                            onPressed: () => navigate_jp(context)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SizedBox(
                        width: 250.0,
                        height: 50.0,
                        child: CupertinoButton.filled(
                          //color: const Color(0xff4990e2),
                            child: Text(
                              "中文",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: 20.00,
                                  color: Colors.white),
                            ),
                            onPressed: () => navigate_ch(context)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 13.0),
                      child: SizedBox(
                        width: 250.0,
                        height: 50.0,
                        child: CupertinoButton.filled(
                          //color: const Color(0xff4990e2),
                            child: Text(
                              "한국어",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontFamily: "Arial",
                                  fontSize: 20.00,
                                  color: Colors.white),
                            ),
                            onPressed: () => navigate_ko(context)),
                      ),
                    ),

                  ],
                ))),
      ),
    );
  }
}

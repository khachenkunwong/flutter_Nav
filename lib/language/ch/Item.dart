import 'dart:io';

import 'package:Nanglea/core/presentation/res/assets_ch.dart';
import 'package:Nanglea/language/ch/tap.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:Nanglea/language/ch/Map.dart';

import 'package:Nanglea/language/ch/Item_list.dart';
import 'package:Nanglea/classes/language.dart';
import 'package:map_launcher/map_launcher.dart';

import 'package:url_launcher/url_launcher.dart';
import '../../core/presentation/res/assets_ch.dart' as assets;

class Item extends StatefulWidget {
  @override
  _ItemState createState() => _ItemState();
}

class _ItemState extends State<Item> {
  ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = new ScrollController();
    _scrollController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  _openOnGoogleMapApp(double latitude, double longitude, hardtext) async {
    //ส่งไป app google map เเล้วลากเส้นตำเเหน่งปัจจุบันไปเป้าหมาย
    if (await MapLauncher.isMapAvailable(MapType.apple)) {
      await MapLauncher.showDirections(
        mapType: MapType.apple,
        destination: Coords(latitude, longitude),
        destinationTitle: hardtext,
      );
    }
  }

  Widget _buildFab(var color) {
    //starting fab position
    final double defaultTopMargin = 305.0 - 4.0;
    //pixels from top where scaling should start
    final double scaleStart = 96.0;
    //pixels from top where scaling should end
    final double scaleEnd = scaleStart / 2;

    double top = defaultTopMargin;
    double scale = 1.0;
    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;
      top -= offset;
      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 1.0;
      }  else {
        //offset passed scaleEnd => hide fab
        scale = 0.0;
      }
    }


    Future<void> _showMyDialog(BuildContext context) async {
      return showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) {
          return CupertinoActionSheet(
            title: Text(
              "请 选择 开始",
              style: TextStyle(
                fontFamily: "Kanit",
              ),
            ),
            actions: <Widget>[
              CupertinoActionSheetAction(
                child: Text(
                  "我 的 位置",
                  style: TextStyle(
                    fontFamily: "Kanit",
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                  //MapsLauncher.launchCoordinates(sets[l[0]][0], sets[l[0]][1],hardtext[l[0]]);
                  _openOnGoogleMapApp(
                      sets[l[0]][0], sets[l[0]][1], hardtext[l[0]]);
                },
              ),
              CupertinoActionSheetAction(
                child: Text(
                  "搜索 地点",
                  style: TextStyle(
                    fontFamily: "Kanit",
                  ),
                ),
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    //pushAndRemoveUntil ไปหน้าต่อไปโดยไม่โดยกดย้อนกลับไม่ได้
                    context,
                    CupertinoPageRoute(
                        builder: (context) =>
                            Tapp()), //CupertinoPageRoute คลิกไปหน้าต่อไปเเล้วซะไลขว้า
                        (Route<dynamic> route) => false,
                  );
                },
              ),
            ],
            cancelButton: CupertinoActionSheetAction(
              isDefaultAction: true,
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontFamily: "Kanit",
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          );
        },
      );
    }

    MaterialColor materialColor =
    MaterialColor(0xff93d7e4, assets.color); // สี appbar

    return Positioned(
      top: top,
      right: 16.0,
      child: new Transform(
        transform: new Matrix4.identity()..scale(scale),
        alignment: Alignment.center,
        child: new FloatingActionButton(
          backgroundColor: color,
          onPressed: () => {_openOnGoogleMapApp(sets[l[0]][0], sets[l[0]][1], hardtext[l[0]])},
          child: new Icon(
            Icons.directions,
            size: 33.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _texthart() {
    final double defaultTopMargin = 305.0 - 4.0;
    //pixels from top where scaling should start
    final double scaleStart = 96.0;
    //pixels from top where scaling should end

    double scale = 0.0;

    if (_scrollController.hasClients) {
      double offset = _scrollController.offset;

      if (offset < defaultTopMargin - scaleStart) {
        //offset small => don't scale down
        scale = 0.0;
      } else {
        //offset passed scaleEnd => hide fab
        scale = 1.0;
      }
    }

    return Transform(
      transform: new Matrix4.identity()..scale(scale), //กำหนดขนาด
      child: Wrap(
        direction: Axis.vertical,
        children: <Widget>[
          Text(assets.hardtext[assets.l[0]],
              style: TextStyle(
                fontFamily: "Kanit",
                color: Colors.white,
                fontSize: 20.0,
              )),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final Index_number number = ModalRoute.of(context).settings.arguments;
    //double c_width = MediaQuery.of(context).size.width * 0.6;
    MaterialColor materialColor =
    MaterialColor(0xff93d7e4, assets.color); // สี appbar

    return Scaffold(
      body: Stack(
        children: <Widget>[
          CustomScrollView(
            controller: _scrollController,
            slivers: <Widget>[
              SliverAppBar(
                leading: InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.white,
                  ),
                ),
                title: _texthart(),
                backgroundColor: materialColor,
                expandedHeight: 300.0,
                floating: false,
                pinned: true,
                snap: false,
                flexibleSpace: FlexibleSpaceBar(
                  background: Item_list(),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Wrap(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 20.0),
                          alignment: FractionalOffset.topLeft,
                          child: Text(
                            assets.name[assets.l[0]],
                            style: TextStyle(
                              fontFamily: "Kanit",
                              fontSize: 23.0,
                              color: Colors.black,
                            ),
                          )),
                      Container(
                          alignment: FractionalOffset.topLeft,
                          child: Wrap(
                            children: <Widget>[
                              Text(
                                assets.history[assets.l[0]],

                                ///
                                style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 14.00,
                                    color: Colors.black),
                              ),
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 19.0, 0.0, 0.0),
                        child: Container(
                            alignment: FractionalOffset.topLeft,
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "工作 时间 : ",
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14.00,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  assets.time_available[assets.l[0]],
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14.00,
                                      color: Colors.black),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 19.0, 0.0, 0.0),
                        child: Container(
                            alignment: FractionalOffset.topLeft,
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "地点 : ",
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14.00,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  assets.place_des[assets.l[0]], /////
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14.00,
                                      color: Colors.black),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 19.0, 0.0, 0.0),
                        child: Container(
                            alignment: FractionalOffset.topLeft,
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "电话 : ",
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14.00,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  assets.phone[assets.l[0]],

                                  ///
                                  style: TextStyle(
                                    fontFamily: "Kanit",
                                    fontSize: 14.00,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 19.0, 0.0, 0.0),
                        child: Container(
                            alignment: FractionalOffset.topLeft,
                            child: Wrap(
                              children: <Widget>[
                                Text(
                                  "信息 : ", //"http://www.thawan-duchanee.com \nอัตราค่าเข้าชม 80 บาท ทั้งชาวไทยและ\nชาวต่างชาติ",
                                  style: TextStyle(
                                      fontFamily: "Kanit",
                                      fontSize: 14.00,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Linkify(
                                  onOpen: (link) async {
                                    if (await canLaunch(link.url)) {
                                      await launch(link.url);
                                    } else {
                                      throw '$link';
                                    }
                                  },
                                  text: assets.note[assets.l[0]], ////
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Kanit",
                                    fontSize: 14.00,
                                  ),
                                  linkStyle: TextStyle(color: Colors.blue),
                                ),
                              ],
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0.0, 19.0, 0.0, 0.0),
                        child: Column(
                          children: <Widget>[
                            Wrap(
                              children: <Widget>[
                                Container(
                                  height: 35.0,
                                  width: 35.0,
                                  child: Image.asset(
                                      'assets/images/ic_logo_crru.png'),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'จัดทำโดยคณะมนุษยศาสตร์ มหาวิทยาลัยราชภัฏเชียงราย\nร่วมกับ เทศบาลตำบทนางแล จังหวัดเชียงราย',
                                    style: TextStyle(
                                      fontFamily: 'Kanit',
                                      fontSize: 10,
                                      color: Colors.black54,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              height: 220.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          _buildFab(materialColor),
        ],
      ),
    );
  }
}

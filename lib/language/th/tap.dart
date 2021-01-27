import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Nanglea/language/th/Travel_items.dart'; //

import 'Map.dart';
import '../../Color.dart';

class Tapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialColor materialColor = MaterialColor(0xff93d7e4, color); // สี appbar
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: materialColor, // สี appbar
      ),
      home: Tap(),
    );
  }
}

class Tap extends StatefulWidget {
  @override
  _TapState createState() => _TapState();
}

class _TapState extends State<Tap> with SingleTickerProviderStateMixin {
  TabController _tabController; // ตัวควบคุม Tab
  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Container(
              height: 35.0,
              width: 35.0,
              child: Image.asset('assets/images/ic_logo_crru.png'),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: const Text(
                'จัดทำโดยคณะมนุษยศาสตร์ มหาวิทยาลัยราชภัฏเชียงราย\nร่วมกับ เทศบาลตำบทนางแล จังหวัดเชียงราย',
                style: TextStyle(
                  fontFamily: 'TH Sarabun New',
                  fontSize: 13,
                  color: const Color(0xffffffff),
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
        bottom: TabBar(
          indicatorColor: Colors.white,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey,
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              child: Text('เเผนที่',
                  style: TextStyle(
                      color: _tabController.index == 0
                          ? Colors.white
                          : Colors.grey)),
            ),
            Tab(
              child: Text('รายการ',
                  style: TextStyle(
                      color: _tabController.index == 1
                          ? Colors.white
                          : Colors.grey)),
            ),
          ],
        ),
      ),
      body: TabBarView(
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: <Widget>[
          _tabController.index == 0
              ? Map()
              : Text('') ,
          Travel_items(),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:Nanglea/classes/Trave_th.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:Nanglea/core/presentation/res/assets.dart';
import 'package:Nanglea/language/th/Item.dart';

import 'package:Nanglea/language/th/coffee_model.dart';
import 'package:Nanglea/widgets/network_image.dart';

import 'package:location/location.dart';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_widget/search_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class Map extends StatefulWidget {
  @override
  State<Map> createState() => MapSampleState();
}

class MapSampleState extends State<Map> {
  LocationData currentLocation;
  String searchAddr;
  List<Marker> allMarkers = [];
  PageController _pageController;
  int prevPage; //ใช้กับ _onScroll()

  GoogleMapController _controller1;
  TravelList _selectedItem;
  Location location;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    coffeeShops.forEach((element) {
      //coffeeShops คือ file coffee
      allMarkers.add(Marker(
          markerId: MarkerId(element.shopName),
          draggable: false,
          infoWindow: InfoWindow(title: element.shopName),
          // ignore: deprecated_member_use
          icon: BitmapDescriptor.fromAsset(element.image),
          onTap: () {
            _onTap(element);
          },
          position: element.locationCoords));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.75)
      ..addListener(_onScroll);

    location = new Location(); //ตัว ทำให้มีลูกศอน location ของตัวเอง
    location.onLocationChanged.listen((LocationData cLoc) {
      currentLocation = cLoc;
    });
  }

  Future _onTap(element) {
    //เมื่อกด ตัวที่มาคไว้บนเเผนที่ก็จะ เลื่อน
    _pageController.animateToPage(element.number,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  // if (selectedItem.number == 0) async {
  //   _controller1.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
  //       //CameraPosition ใช้อั้นเดียวกันกับค่าเริ่มต้น
  //       target: selectedItem.latLngSearch,
  //       zoom: 16.0,
  //       bearing: 45.0,
  //       tilt: 45.0)));
  // }

  void _onScroll() {
    //เวลาเลื่อนเเล้วเลื่อนตาม
    if (_pageController.page.toInt() != prevPage) {
      //ถ้าไม่ตรงสถานที่ให้เลือน
      prevPage = _pageController.page.toInt();

      moveCamera(); //ใช้กับอันข้างล่าง

    }
  }

  Future<LocationData> getCurrentLocation() async {
    Location location = Location();
    try {
      return await location.getLocation();
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        // Permission denied
      }
      return null;
    }
  }

  Future _goToMe() async {
    currentLocation = await getCurrentLocation();
    _controller1.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
      target: LatLng(currentLocation.latitude, currentLocation.longitude),
      zoom: 16,
    )));
  }

  // bool _first = true;
  moveCameraSearch() {
    ///การกดเลื่อนตาม
    _controller1.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        //CameraPosition ใช้อั้นเดียวกันกับค่าเริ่มต้น
        target: coffeeShops[_pageController.page.toInt()].locationCoords,
        zoom: 16.0,
        bearing: 45.0,
        tilt: 45.0)));
  }

  moveCamera() {
    ///การกดเลื่อนตาม
    _controller1.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        //CameraPosition ใช้อั้นเดียวกันกับค่าเริ่มต้น
        target: coffeeShops[_pageController.page.toInt()].locationCoords,
        zoom: 16.0,
        bearing: 45.0,
        tilt: 45.0)));
  }

  _coffeeShopList(index) {
    //เเถบตัวเลื่อน
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          //มิติเเถบเลื่อน อันที่เลือกใหญ่กว่าอันที่ไม่ได้เลื่อก
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            //ความกว้างความยาวของบ็อกตัวเลื่อน
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () async {
            l.insert(0, index);
            await Future.delayed(Duration(milliseconds: 200));
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return Item();
                },
                fullscreenDialog: true,
              ),
            );
          },
          child: Hero(
            tag: "card${index}",
            child: Stack(children: [
              Center(
                  child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      height: 125.0,
                      width: 275.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white),
                          child: Row(children: [
                            Flexible(
                              flex: 1,
                              fit: FlexFit.tight,
                              child: Container(
                                  height: 90.0,
                                  width: 90.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0)),
                                      image: DecorationImage(
                                          image: AssetImage(//NetworkImage(
                                              coffeeShops[index].thumbNail),
                                          fit: BoxFit.cover))),
                            ),
                            Flexible(
                              flex: 2,
                              fit: FlexFit.tight,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Text(coffeeShops[index].shopName,
                                            style: TextStyle(
                                              fontSize: 12.5,
                                              fontFamily: "Kanit",
                                              color: Colors.grey[600],
                                            )),
                                      ),
                                      Flexible(
                                        flex: 2,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          width: 170.0,
                                          child: Text(
                                              coffeeShops[index].description,
                                              style: TextStyle(
                                                fontSize: 11.0,
                                                fontFamily: "Kanit",
                                                color: Colors.grey[600],
                                              )),
                                        ),
                                      )
                                    ]),
                              ),
                            )
                          ]))))
            ]),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Stack(
                  children: [
                     GoogleMap(
                          zoomControlsEnabled: false,
                          myLocationEnabled: true,
                          compassEnabled: false,

                          mapToolbarEnabled: true, //เเถบเครื่องมือถ้าเป็น จริง
                          rotateGesturesEnabled:
                              true, //ตอบสนองการหมุนเมือเเตะ จริง
                          scrollGesturesEnabled:
                              true, //ตอบสนองการเลื่อนเมือเเตะ จริง
                          zoomGesturesEnabled:
                              true, //ตอบสนองการซูมเมือเเตะ จริง
                          tiltGesturesEnabled: false,
                          trafficEnabled: true, // เปิดการจราจร จริง
                          mapType: MapType.normal,
                          markers: Set.from(allMarkers),
                          initialCameraPosition: CameraPosition(
                              target: LatLng(20.064509, 99.811011), zoom: 10.0),
                          onMapCreated: mapCreated,
                        ),


                    Positioned(
                      bottom: 55.0,
                      child: Container(
                        height: 200.0,
                        width: MediaQuery.of(context).size.width,
                        child: PageView.builder(
                          controller: _pageController,
                          itemCount: coffeeShops.length,
                          itemBuilder: (BuildContext context, int index) {
                            return _coffeeShopList(index);
                          },
                        ),
                      ),
                    ),
                    Positioned(
                      left: 15.0,
                      top: 15.0,
                      right: 15.0,
                      child: SearchWidget(
                        dataList: list,
                        listContainerHeight:
                            MediaQuery.of(context).size.height / 4,
                        popupListItemBuilder: (item) {
                          //ทำให้เเสดงรายชื่อได้
                          return Container(
                            padding: const EdgeInsets.all(12),
                            child: Text(
                              item.username,
                              style: const TextStyle(fontSize: 16),
                            ),
                          );
                        },
                        textFieldBuilder: (controller, focusNode) {
                          return MyTextField(controller, focusNode);
                        },
                        noItemsFoundWidget: NoItemsFound(),
                        selectedItemBuilder: (selectedItem, deleteSelectedItem,) {
                          _controller1.animateCamera(
                              CameraUpdate.newCameraPosition(CameraPosition(
                                  target: selectedItem.latLngSearch,
                                  zoom: 16.0,
                                  bearing: 45.0,
                                  tilt: 45.0)));
                        },
                        queryBuilder: (query, list) {
                          //เมื่อพิมเจอเเล้ว ตัวเลือกอื้นหาย
                          return list
                              .where((item) => item.username
                                  .toLowerCase()
                                  .contains(query.toLowerCase()))
                              .toList();
                        },
                        onItemSelected: (item) {
                          setState(() {
                            _selectedItem = item;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ) ///////////////////////////
            ],
          ),
        ),
      ),
    );
  }

  void mapCreated(controller) {
    setState(() {
      _controller1 = controller;
    });
  }
}

_openOnGoogleMapApp(double latitude, double longitude) async {
  String googleUrl =
      'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude';
  //'https://www.google.com/maps/dir/20.044707,%2099.828704/20.064509,%2099.811011';

  if (await canLaunch(googleUrl)) {
    await launch(googleUrl);
  } else {
    // Could not open the map.
  }
}

class NoItemsFound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(width: 10),
        Text("ค้นหาไม่พบ",
            style: TextStyle(
              fontFamily: "Kanit",
              color: Colors.grey[600],
            )),
      ],
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField(this.controller, this.focusNode);

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 50.0,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(9.0),
          color: Colors.white,
        ),
        child: Stack(
          children: <Widget>[
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Center(
                    child: Image.asset(
                      'assets/images/ic_search.png',
                      width: 25,
                      height: 25,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                decoration: InputDecoration(
                  hintText: 'ค้นหาสถานที่',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 45.0, bottom: 10.0),
                ),
              ),
            ),
          ],
        ),
      );

  }
}

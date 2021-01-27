import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

//import 'package:flutter_ui_challenges/core/presentation/res/assets.dart'
//    as assets;
//import 'package:flutter_ui_challenges/src/widgets/network_image.dart';

import '../../core/presentation/res/assets_en.dart' as assets;
import '../../widgets/network_image.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class Item_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialColor materialColor =
    MaterialColor(0xff93d7e4, assets.color); // สี appbar
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                height: 300.0,
                child: Swiper(
                  loop: false,
                  itemBuilder: (BuildContext context, int inum) {
                    return PNetworkImage(
                      //network_image.dart

                      assets.u[assets.l[0]][inum],
                      height: 300.0,
                      fit: BoxFit.cover,
                    );
                  },
                  itemCount: assets.u[assets.l[0]].length, // กำหนดจุด
                  pagination: SwiperPagination(
                      builder: SwiperPagination.dots,
                      margin: EdgeInsets.all(
                          8.0)), // package:flutter_swiper ทำให้มีจุดเลือน
                ),
              ),
            ),
          ],
        ),
        //ตัวเลือน
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Nanglea/language/en/tap.dart';
import 'package:Nanglea/language/en/Item.dart';
import 'package:Nanglea/language/en/Item_list.dart';
import 'package:Nanglea/classes/language.dart';
import 'package:Nanglea/widgets/network_image.dart';
import '../../core/presentation/res/assets_en.dart';

class Travel_items extends StatelessWidget {
  final List<String> items =
  List<String>.generate(imagess.length, (index) => "${++index}"); //+1

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(1.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 0.67,
            crossAxisCount: 2,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return InkWell(
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
                child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              height: 183.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10.0),
                                  topRight: Radius.circular(10.0),
                                ),
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: ExactAssetImage(imagess[index]),
                                ),
                              ),
                            )

                        ),
                        Flexible(
                          flex: 0,
                          fit: FlexFit.tight,
                          child: Wrap(
                            children: <Widget>[
                              ListTile(
                                title: Text('${hardtext[index]}',
                                    style: TextStyle(
                                      fontFamily: "Kanit",
                                      color: Colors.grey[600],
                                    )),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}

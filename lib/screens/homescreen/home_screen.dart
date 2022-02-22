import 'package:flutter/material.dart';
import 'package:resturent_app11/models/productItem.dart';
import 'package:resturent_app11/screens/homescreen/homescreenbloc.dart';
import 'package:resturent_app11/screens/productdetail/productdetails_screen.dart';
import 'package:resturent_app11/utils/singleton.dart';
import 'package:scroll_navigation/scroll_navigation.dart';

class HomeScreen extends StatelessWidget {
  var bloc = homescreenbloc();
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ScrollNavigation(
          bodyStyle: const NavigationBodyStyle(
            background: Colors.white,
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          barStyle: const NavigationBarStyle(
            position: NavigationPosition.top,
            background: Colors.white,
            elevation: 0.0,
          ),
          pages: [
            ListView.builder(
                itemCount: Singleton.preferance.productList.length,
                itemBuilder: (ctx, index) {
                  return bloc.productCell(
                      product: Singleton.preferance.productList[index],
                      ctx: context,
                      inx: index);
                }),
            Container(color: Colors.green[100]),
            Container(color: Colors.purple[100]),
          ],
          items: const [
            ScrollNavigationItem(icon: Text("smoothies 1")),
            ScrollNavigationItem(icon: Text("smoothies 2")),
            ScrollNavigationItem(icon: Text("smoothies 3")),
          ],
        ));
  }
}

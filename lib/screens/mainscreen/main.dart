import 'package:flutter/material.dart';
import 'package:resturent_app11/screens/cart/cart_screen.dart';
import 'package:resturent_app11/screens/homescreen/home_screen.dart';
import 'package:resturent_app11/screens/mainscreen/mainscreenbloc.dart';
import 'package:resturent_app11/screens/profile_screen.dart';
import 'package:resturent_app11/shared_widgets/custom_appbar.dart';
import 'package:resturent_app11/utils/singleton.dart';

class MainContainer extends StatefulWidget {
  const MainContainer({Key? key}) : super(key: key);

  @override
  State<MainContainer> createState() => _MainContainerState();
}

class _MainContainerState extends State<MainContainer> {
  var bloc = Mainscreenbloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: ourCutomAppBar(context, backButtonPressed: () {}),
      body: bloc.slectedTab(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: bloc.selectedIndex,
        iconSize: 30,
        selectedItemColor: const Color(0xffA7BBDB),
        unselectedItemColor: const Color(0xffD3D8E0),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ""),
        ],
        onTap: (index) {
          bloc.selectedIndex = index;
          setState(() {});
        },
      ),
    );
  }

  //HERE

}

import 'package:flutter/material.dart';

import '../cart/cart_screen.dart';
import '../homescreen/home_screen.dart';
import '../profile_screen.dart';

class Mainscreenbloc {
  var selectedIndex = 0;

  Widget slectedTab() {
    if (selectedIndex == 0) {
      return HomeScreen();
    } else if (selectedIndex == 1) {
      return CartScreen(
        refreshPage: () {},
      );
    } else {
      return ProfileScreen();
    }
  }
}

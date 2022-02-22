import 'package:flutter/material.dart';
import 'package:resturent_app11/main.dart';
import 'package:resturent_app11/screens/mainscreen/main.dart';

class createaccountbloc {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController createpasswordcontroller = TextEditingController();
  String errormsg = "";

  validationRegister(BuildContext context) {
    if (namecontroller.text.isEmpty) {
      errormsg = "name field is empty";
    } else if (emailcontroller.text.isEmpty) {
      errormsg = "email field is emply";
    } else if (mobilecontroller.text.isEmpty) {
      errormsg = "mobile is empty";
    } else if (createpasswordcontroller.text.isEmpty) {
      errormsg = "you must create password";
    } else if (namecontroller.text != "anas") {
      errormsg = "name is not correct";
    } else {
      errormsg = "";
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainContainer()));
    }
  }
}

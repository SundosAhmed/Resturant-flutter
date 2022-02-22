import 'package:flutter/material.dart';

class Forgetpasswordbloc {
  TextEditingController emailPhoneController = TextEditingController();
  bool validateForgotPasswordField() {
    if (emailPhoneController.text.isEmpty) {
      return false;
    } else {
      return true;
    }
  }
}

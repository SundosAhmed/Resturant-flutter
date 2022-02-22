import 'package:flutter/material.dart';
import 'package:resturent_app11/models/productItem.dart';
import 'package:resturent_app11/utils/singleton.dart';

class cartbloc {
  List<ProductItemModel> filteredList = [];

  String getBillTotal() {
    double total = 0;

    for (ProductItemModel model in Singleton.preferance.productList) {
      total = total + (model.qty * model.price);
    }

    return total.toStringAsFixed(2);
  }

  String grantTotal(String total) {
    var doubleTotal = double.parse(total);
    return (doubleTotal * 70 / 100).toStringAsFixed(2);
  }
}

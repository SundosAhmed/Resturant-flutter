import 'package:flutter/material.dart';
import 'package:resturent_app11/models/productItem.dart';

import '../productdetail/productdetails_screen.dart';

class homescreenbloc {
  Widget productCell(
      {required ProductItemModel product,
      required BuildContext ctx,
      required int inx}) {
    return InkWell(
      onTap: () {
        Navigator.push(
          ctx,
          MaterialPageRoute(builder: (context) => ProductDetails(product, inx)),
        );
      },
      child: Column(
        children: [
          const SizedBox(height: 4),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: product.color),
                    borderRadius: BorderRadius.circular(37.5),
                  ),
                  height: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        product.name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      Text(
                        product.price.toString(),
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
              Image.asset(
                "assets/images/productImg" + product.image + ".png",
                width: 75,
                height: 75,
              )
            ],
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class paymentbloc {
  var pageController = PageController(initialPage: 1, viewportFraction: 0.8);

  Widget cardView(int index) {
    if (index == 0) {
      return card(Colors.grey);
    } else if (index == 1) {
      return card(Colors.blue);
    } else {
      return card(Colors.pink);
    }
  }

  Widget card(Color color) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Padding(
            padding: const EdgeInsets.only(top: 17, right: 17),
            child: Image.asset(
              "assets/images/visa.png",
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "1234   5678   9023",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                "1234",
                style: TextStyle(color: Colors.white, fontSize: 7),
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Row(
            children: [
              const Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Text(
                  "Abed alrahman",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
              Expanded(child: Container()),
              Container(
                width: 50,
                child: const Text(
                  "Valid THRU",
                  maxLines: 2,
                  style: TextStyle(color: Colors.white, fontSize: 13),
                ),
              ),
              const SizedBox(
                width: 3,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16.0),
                child: Text(
                  "03/12",
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

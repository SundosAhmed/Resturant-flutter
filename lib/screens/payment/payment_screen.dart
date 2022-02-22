import 'package:flutter/material.dart';
import 'package:resturent_app11/screens/payment/paymentbloc.dart';
import 'package:resturent_app11/shared_widgets/custom_appbar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PaymentScreen extends StatelessWidget {
  var bloc = paymentbloc();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ourCutomAppBar(context,
          showBackButton: true, title: "Payment", backButtonPressed: () {}),
      body: Container(
        color: Color(0xffEDEDED),
        child: Column(
          children: [
            Container(
              height: 170,
              child: PageView.builder(
                  itemCount: 3,
                  controller: bloc.pageController,
                  itemBuilder: (context, index) {
                    return bloc.cardView(index);
                  }),
            ),
            SmoothPageIndicator(
                controller: bloc.pageController,
                count: 3,
                effect: const ScrollingDotsEffect(
                  activeStrokeWidth: 2.6,
                  activeDotScale: 1.3,
                  maxVisibleDots: 5,
                  radius: 8,
                  spacing: 10,
                  dotHeight: 12,
                  dotWidth: 12,
                )),
          ],
        ),
      ),
    );
  }
}

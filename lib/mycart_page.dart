import 'package:dealerapp/custom_navbar.dart';
import 'package:dealerapp/home_page.dart';
import 'package:dealerapp/checkout_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
              child: PageView(
            children: [
              CheckoutPage(),
            ],
          )),
          Align(alignment: Alignment.bottomCenter, child: CustomNavbar())
        ],
      ),
    );
  }
}

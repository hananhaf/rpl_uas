import 'package:dealerapp/helper/dimensions.dart';
import 'package:dealerapp/screens/address.dart';
import 'package:dealerapp/widgets/itemCard.dart';
import 'package:flutter/material.dart';
import 'package:dealerapp/home_page.dart';

class CheckoutPage extends StatefulWidget {
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.cyan[600],
          ),
          title: Text(
            "TOKO MOBIL ONLINE",
            style: TextStyle(color: Colors.cyan[400], fontSize: vpH * 0.03, fontWeight: FontWeight.w700),
          ),
        ),
        bottomNavigationBar: new BottomAppBar(
          child: Padding(
            padding: EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));
                  },
                  icon: Icon(Icons.home_outlined),
                  iconSize: vpH * 0.035,
                  tooltip: 'Home',
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.info_outline),
                  iconSize: vpH * 0.035,
                  tooltip: 'Shp Info',
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.person),
                  iconSize: vpH * 0.035,
                  tooltip: 'profile',
                  color: Colors.grey,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart),
                  iconSize: vpH * 0.035,
                  tooltip: 'Home',
                  color: Colors.cyan[600],
                ),
              ],
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: vpH * 0.03, left: vpW * 0.03, right: vpW * 0.03),
                child: Container(
                  height: vpH * 0.7,
                  width: vpW,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ItemCard();
                    },
                  ),
                ),
              ),
              Container(
                height: vpH * 0.14,
                width: vpW * 1,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0, -5),
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Total Price: ",
                            style: TextStyle(
                              color: Colors.cyan[600],
                              fontSize: vpH * 0.025,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Price ",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: vpH * 0.02,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: double.maxFinite,
                          child: RaisedButton(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return AddressPage();
                                  },
                                ),
                              );
                            },
                            color: Colors.cyan[600],
                            child: Text(
                              "Pay Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: vpH * 0.02,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

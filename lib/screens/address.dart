import 'package:dealerapp/helper/dimensions.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatefulWidget {
  @override
  _AddressPageState createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.cyan[600],
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Address",
          style: TextStyle(color: Colors.cyan[400], fontSize: vpH * 0.03, fontWeight: FontWeight.w700),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.cyan[600],
              height: vpH * 0.13,
              width: double.maxFinite,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: vpH * 0.03),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: vpH * 0.005),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.grey[400],
                          ),
                          Icon(
                            Icons.remove,
                            color: Colors.white,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.grey[400],
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Address",
                          style: TextStyle(color: Colors.black, fontSize: vpH * 0.025),
                        ),
                        Text(
                          "Confirmation",
                          style: TextStyle(color: Colors.black, fontSize: vpH * 0.025),
                        ),
                        Text(
                          "Payment",
                          style: TextStyle(color: Colors.black, fontSize: vpH * 0.025),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: vpH * 0.03),
              child: Container(
                width: vpW * 0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5.0,
                      offset: Offset(0.0, 5),
                      spreadRadius: 2.0,
                    ),
                  ],
                ),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: vpH * 0.01),
                      child: new ListTile(
                        leading: const Icon(Icons.person),
                        title: new TextField(
                          decoration: new InputDecoration(
                            hintText: "Name",
                          ),
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(Icons.phone),
                      title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Phone",
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(Icons.email),
                      title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Email",
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(Icons.house),
                      title: new TextField(
                        maxLines: 2,
                        decoration: new InputDecoration(
                          hintText: "Flat, House no, Building, Company, Apartment",
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(Icons.add_road),
                      title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Area, Colony, Street, Sector, Village",
                        ),
                      ),
                    ),
                    new ListTile(
                      leading: const Icon(Icons.location_city),
                      title: new TextField(
                        decoration: new InputDecoration(
                          hintText: "Town/City",
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: vpH * 0.03),
                      child: new ListTile(
                        leading: const Icon(Icons.landscape),
                        title: new TextField(
                          decoration: new InputDecoration(
                            hintText: "State",
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: vpW * 0.04, vertical: vpH * 0.03),
                      child: SizedBox(
                        width: double.maxFinite,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                          onPressed: () {},
                          color: Colors.cyan[600],
                          child: Text(
                            "Save Address",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: vpH * 0.02,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

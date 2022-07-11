import 'package:dealerapp/helper/dimensions.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatefulWidget {
  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  int _n = 0;
  int price = 95;
  void add() {
    setState(() {
      _n++;
    });
  }

  void minus() {
    setState(() {
      if (_n != 0) _n--;
    });
  }

  @override
  Widget build(BuildContext context) {
    var vpH = getViewportHeight(context);
    var vpW = getViewportWidth(context);
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: vpW * 0.90,
        decoration: BoxDecoration(
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
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Image.asset("assets/img/MOBIL.jpg"),
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Text(
                            "Mobil Avanza Super Kencang",
                            style: TextStyle(fontSize: vpH * 0.02, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: vpH * 0.005, horizontal: 5.0),
                          child: Text(
                            'Rp${price * _n} juta',
                            style: TextStyle(fontSize: vpH * 0.025, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: vpH * 0.005, horizontal: 5.0),
                          child: Text(
                            "di jual cepat sak cepatnya",
                            style: TextStyle(fontSize: vpH * 0.015, fontWeight: FontWeight.normal),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: vpH * 0.005, horizontal: 5.0),
                          child: Text(
                            "masi banyak stock boskuh",
                            style: TextStyle(fontSize: vpH * 0.015, fontWeight: FontWeight.normal, color: Colors.green[700]),
                          ),
                        ),
                        Row(
                          children: [
                            MaterialButton(
                              onPressed: minus,
                              color: Colors.cyan[600],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.remove,
                                size: vpH * 0.03,
                              ),
                              padding: EdgeInsets.all(5),
                              shape: CircleBorder(),
                            ),
                            Text(
                              '$_n',
                              style: TextStyle(fontSize: vpH * 0.02),
                            ),
                            MaterialButton(
                              onPressed: add,
                              color: Colors.cyan[600],
                              textColor: Colors.white,
                              child: Icon(
                                Icons.add,
                                size: vpH * 0.03,
                              ),
                              padding: EdgeInsets.all(5),
                              shape: CircleBorder(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

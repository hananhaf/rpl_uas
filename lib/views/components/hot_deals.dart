import 'package:flutter/material.dart';
import 'package:dealerapp/utils/colors.dart';
import 'package:dealerapp/utils/sizes.dart';

class HotDeals extends StatelessWidget {
  const HotDeals({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          HotDealCard(
            image: "assets/porsche/porsche_911.png",
            title: "Mobil Honda Jazz Tahun 2013",
            location: "Slamet Riyadi",
            price: 120000000,
            press: () {},
          ),
          HotDealCard(
            image: "assets/porsche/porsche_boxster.png",
            title: "Mobilio Tahun 2016",
            location: "Colomadu",
            price: 235000000,
            press: () {},
          ),
          HotDealCard(
            image: "assets/porsche/porsche_cayman.png",
            title: "Calya Tahun 2018",
            location: "Sukoharjo",
            price: 175000000,
            press: () {},
          ),
          HotDealCard(
            image: "assets/porsche/porsche_macan.png",
            title: "Pajero Sport Tahun 2019",
            location: "Solo Baru",
            price: 350000000,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class HotDealCard extends StatelessWidget {
  const HotDealCard({
    Key key,
    this.image,
    this.title,
    this.location,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title, location;
  final int price;
  final Function press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double widthCard = size.width * 0.6;
    return Container(
      margin: EdgeInsets.only(
        left: defaultPadding,
        top: defaultPadding / 2,
        bottom: defaultPadding * 2.5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      width: widthCard,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: new EdgeInsets.only(left: defaultPadding, top: defaultPadding),
              child: Text(
                "$title",
                style: Theme.of(context).textTheme.button.copyWith(color: textColor),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: new EdgeInsets.only(left: defaultPadding),
              child: Text(
                "$location",
                style: Theme.of(context).textTheme.button.copyWith(color: primaryColor.withOpacity(0.5)),
              ),
            ),
            Image.asset(image),
            Container(
              width: widthCard,
              alignment: Alignment.centerRight,
              padding: new EdgeInsets.only(right: defaultPadding, bottom: defaultPadding / 2),
              child: Text(
                'Rp $price',
                style: Theme.of(context).textTheme.button.copyWith(color: primaryColor),
              ),
            ),
            SizedBox(
              width: widthCard,
              child: FlatButton(
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                ),
                color: primaryColor,
                onPressed: () {},
                child: Text(
                  "Hubungi Seller",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dealerapp/utils/colors.dart';
import 'package:dealerapp/utils/sizes.dart';
import 'package:dealerapp/views/components/hot_deals.dart';
import 'package:dealerapp/views/components/title_with_view_all_btn.dart';
import 'package:dealerapp/views/components/top_dealers.dart';
import 'header_with_search_box.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It will provie us total height  and width of our screen
    Size size = MediaQuery.of(context).size;
    // it enable scrolling on small device
    return Container(
      child: SingleChildScrollView(
        child: Container(
          color: backgroundColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HeaderWithSearchBox(size: size),
              TitleWithViewAllBtn(title: "Hot Deals", press: () {}),
              HotDeals(),
              TitleWithViewAllBtn(title: "Top Dealers", press: () {}),
              TopDealers(),
              SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

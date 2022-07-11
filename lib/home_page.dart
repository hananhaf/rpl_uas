import 'package:dealerapp/custom_tabbar.dart';
import 'package:dealerapp/detail_page.dart';
import 'package:dealerapp/theme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bulao,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(left: 31, top: 30, bottom: 58),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Cari Mobil",
                      style: blackTektFont1.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text("Sesuai dengan Kebutuhan", style: blackTektFont1.copyWith(fontSize: 20, fontWeight: FontWeight.w600, color: blueColor)),
                  ],
                ),
                Text(
                  "Anda",
                  style: blackTektFont1.copyWith(fontSize: 20, fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    children: [
                      Container(
                        padding: EdgeInsets.only(top: 13, left: 17, bottom: 13),
                        height: 50,
                        width: MediaQuery.of(context).size.width - 119,
                        decoration: BoxDecoration(color: greyColor2, borderRadius: BorderRadius.all(Radius.circular(8))),
                        child: Row(
                          children: [
                            Image.asset('assets/cari.png'),
                            SizedBox(width: 9),
                            Text(
                              'Cari Mobil',
                              style: blackTektFont1.copyWith(fontSize: 14, color: greyColor),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 21,
                      ),
                      Container(
                        height: 50,
                        width: 53,
                        decoration: BoxDecoration(color: blueColor, borderRadius: BorderRadius.all(Radius.circular(8)), image: DecorationImage(image: AssetImage('assets/Vector.png'))),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 31),
            child: CustomTabbar(titles: [
              'Semua',
              'Sedan',
              'Sport',
              'Coupe',
              'HatcBack'
            ]),
          ),
          Container(
            margin: EdgeInsets.only(left: 31, bottom: 21, top: 20),
            child: Text(
              'Mobil Populer',
              style: blackTektFont1.copyWith(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Container(
              margin: EdgeInsets.only(left: 18, right: 42),
              height: 200,
              width: MediaQuery.of(context).size.width - 60,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: bulao2),
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 16, left: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Avanza Veloz 2022',
                          style: blackTektFont1.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Toyota Indonesia',
                          style: blackTektFont1.copyWith(fontSize: 10, fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Image.asset('assets/mobil1.png'),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, right: 42, top: 20),
            padding: EdgeInsets.all(13),
            height: 82,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: bulao2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Innova Reborn',
                      style: blackTektFont1.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Daihatsu',
                      style: blackTektFont1.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Image.asset('assets/mobil2.png')
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 18, right: 42, top: 20),
            padding: EdgeInsets.all(13),
            height: 82,
            width: MediaQuery.of(context).size.width - 60,
            decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8)), color: bulao2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Picanto',
                      style: blackTektFont1.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'KIA',
                      style: blackTektFont1.copyWith(fontSize: 12, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                Image.asset('assets/mobil3.png')
              ],
            ),
          ),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}

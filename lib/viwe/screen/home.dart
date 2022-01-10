import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:myproject11/viwe/screen/widget/bodyhome.dart';
import 'package:myproject11/viwe/screen/widget/boutton.dart';
import 'package:myproject11/viwe/screen/widget/list_body.dart';
import 'package:myproject11/viwe/screen/widget/myRow.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List li = [
      'assets/images/ha1.png',
      'assets/images/ha2.png',
      'assets/images/ha3.png',
      'assets/images/ha4.png',
    ];

    return Scaffold(
      backgroundColor: const Color(0xffE4EAF2),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff2D597B),
        title: const Text(
          'حيدر سمارت ',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Almarai',
            fontSize: 26,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz))
        ],
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13.0),
              color: const Color(0xff2D597B),
            ),
            margin: const EdgeInsets.only(
              top: 0,
              left: 12,
              right: 12,
              bottom: 0,
            ),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                fillColor: Colors.white,
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                hintStyle: const TextStyle(
                    color: Colors.white, fontFamily: 'Almarai', fontSize: 17),
                hintText: 'ابحث عن منتج',
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                    color: Colors.white,
                    width: 1.0,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      // color: Colors.blue,
                      // width: 2.0,
                      ),
                ),
              ),
            ),
          ),
          CarouselSlider.builder(
            itemCount: li.length,
            itemBuilder: (BuildContext context, indx, _) {
              return Container(
                width: double.infinity,
                margin: const EdgeInsets.symmetric(
                  horizontal: 2,
                ),
                child: Image.asset(
                  li[indx],
                  fit: BoxFit.cover,
                ),
              );
            },
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height / 4,
              autoPlay: true,
              initialPage: 1,
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyBoutton(
                  title: 'عروض',
                  icon: const Icon(Icons.star),
                  function: () {},
                ),
                sizedbox(),
                MyBoutton(
                  title: 'مزاد',
                  icon: const Icon(Icons.speed),
                  function: () {},
                ),
                sizedbox(),
                MyBoutton(
                  title: 'ماركات',
                  icon: const Icon(Icons.category),
                  function: () {},
                ),
                sizedbox(),
                MyBoutton(
                  title: 'مسابقات',
                  icon: const Icon(Icons.wallet_giftcard),
                  function: () {},
                ),
                sizedbox(),
                MyBoutton(
                  title: 'جديدنا',
                  icon: const Icon(Icons.new_releases),
                  function: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          bulidRow(
            title2: 'وصلنا حديثا',
            title1: 'عرض الكل',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BodyHome(),
                sizedbox(),
                BodyHome(),
                sizedbox(),
                BodyHome(),
              ],
            ),
          ),
          bulidRow(
            title2: 'اجهزه رائجه',
            title1: 'عرض الكل',
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                BodyHome(),
                sizedbox(),
                BodyHome(),
              ],
            ),
          ),
          bulidRow(
            title2: 'اخر التخفيضات ',
            title1: 'عرض الكل',
          ),
          ListtBody(),
          const SizedBox(
            height: 10,
          ),
          ListtBody(),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [

      //   ],
      //   backgroundColor: Colors.white,
      // ),
    );
  }

  SizedBox sizedbox() => SizedBox(
        width: 15,
      );
}

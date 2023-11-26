import 'package:flutter/material.dart';
// import 'package:my_services/components/category_2_item.dart';
// import 'package:my_services/components/category_item.dart';
// import 'package:my_services/screen/carpenter.dart';
// import 'package:my_services/screen/electricion.dart';
// import 'package:my_services/screen/plumber.dart';
import 'package:my_services/screen_bottom_navigation_bar/favorit_services.dart';
import 'package:my_services/screen_bottom_navigation_bar/home.dart';
import 'package:my_services/screen_bottom_navigation_bar/person.dart';
import 'package:my_services/screen_bottom_navigation_bar/settings.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  // ignore: unused_field
  final List<Widget> _screens = const [
    Home(),
    FavoritServices(),
    Person(),
    Settings(),
  ];
  final List<String> title = const [
    'الصفحة الرئيسية',
    'الخدمات المفضلة',
    'الملف الشخصي',
    'الاعدادات',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD9D9D9),
      appBar: AppBar(
        backgroundColor: const Color(0xff023047),
        leading: const Padding(
          padding: EdgeInsets.only(left: 16),
          child: Icon(
            Icons.notifications_outlined,
            size: 40,
          ),
        ),
        title: Text(
          title[currentIndex],
          style: const TextStyle(
            fontSize: 30,
            color: Color(0xffFB8500),
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              Icons.menu,
              size: 35,
            ),
          ),
        ],
      ),
      body: _screens[currentIndex],
      bottomNavigationBar: Directionality(
        textDirection: TextDirection.rtl,
        child: CurvedNavigationBar(
            // buttonBackgroundColor: Colors.red,
            backgroundColor: const Color(0xffD9D9D9),
            index: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: const <Widget>[
              Icon(
                Icons.home_outlined,
                size: 30,
                //color: Colors.white,
              ),
              Icon(
                Icons.supervised_user_circle,
                size: 30,
                //color: Colors.white,
              ),
              Icon(
                Icons.person_outlined,
                size: 30,
                //color: Colors.white,
              ),
              Icon(
                Icons.settings_outlined,
                size: 30,
                //color: Colors.white,
              ),
            ]),
      ),

      // bottomNavigationBar: BottomNavigationBar(
      //     backgroundColor: const Color(0xffD9D9D9),
      //     currentIndex: currentIndex,
      //     onTap: (index) {
      //       setState(() {
      //         currentIndex = index;
      //       });
      //     },
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //           size: 30,
      //           //color: Colors.white,
      //         ),
      //         label: 'jkhghg',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //           size: 30,
      //           //color: Colors.white,
      //         ),
      //         label: 'jkhghg',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.home_outlined,
      //           size: 30,
      //           //color: Colors.white,
      //         ),
      //         label: 'jkhghg',
      //       )
      //     ]),
    );
  }
}

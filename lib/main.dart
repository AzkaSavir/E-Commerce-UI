import 'package:ecommerce_app/Feutures/home/pages/index/page.dart';
import 'package:ecommerce_app/Feutures/profile/page.dart';
import 'package:flutter/material.dart';

import 'Feutures/favorite/pages/index/page.dart';
import 'Feutures/message/pages/index/page.dart';
import 'preferences/preferences.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}
// kenapa nggak bisa make navigation bar
// karena navigation bar gabisa di potong bulet bawahnya gabisa di custom
class _MainPageState extends State<MainPage> {

  int selectedindex = 0;

  IconButton buildItemNav(IconData icon, int index) {
    return IconButton(
      onPressed: () {
        setState(() {
          selectedindex = index;
        });
      },
      icon: Icon(icon, color: selectedindex == index ? const Color(0xff6C5ECF) : const Color(0xff808191),),
    );
  }


  List<Widget> pages =  [
    HomePage(),
    MessagePage(),
    FavoritePage(),
    ProfilePage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1D2B),
      body: pages[selectedindex],
      floatingActionButton: FloatingActionButton(
        // elevation itu shadow
        elevation: 0,
        onPressed: () {},
        backgroundColor: const Color(0xff38ABBE),
        shape: const CircleBorder(),
        child: Image.asset(AppImage.cart),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          height: 80,
          color: const Color(0xff252836),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildItemNav(CustomIcon.home, 0),
              buildItemNav(CustomIcon.message, 1),
              const SizedBox(width: 40,),
              buildItemNav(CustomIcon.favorite, 2),
              buildItemNav(CustomIcon.profile, 3),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:movie/pages/account/account.dart';
import 'package:movie/pages/bookingHistory/bookingHistory.dart';
import 'package:movie/pages/homePage/homePage.dart';
import 'package:movie/pages/news/detailNews.dart';
import 'package:movie/pages/news/new.dart';

//import 'page/account/accountwidget.dart';

class Mainpage extends StatefulWidget {
  final int initialIndex;

  const Mainpage({super.key, this.initialIndex = 0});

  @override
  State<Mainpage> createState() => _MainpageState();
}

class _MainpageState extends State<Mainpage> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    BookHistoryPage(),
    NewPage(),
    AccountPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Trang Chủ',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.category_outlined),
              label: 'Lịch Sử',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Tin Tức',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Thông Tin',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 11, 7, 233),
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}

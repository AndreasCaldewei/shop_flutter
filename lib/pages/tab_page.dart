import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  @override
  Widget build(BuildContext context) {

    var _pageIndex = 0;

    final _screens = [HomePage(), CartPage()];


    PageController _pageController = PageController();


    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            _pageIndex = index;
          });
        },
        controller: _pageController,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Hello World')),
          BottomNavigationBarItem(
              icon: Icon(Icons.star), title: Text('Hello World')),
        ].toList(),
        onTap: (id) {
          setState(() {
            _pageIndex = id;
          });
          _pageController.jumpToPage(id);
        },
      ),
    );
  }
}
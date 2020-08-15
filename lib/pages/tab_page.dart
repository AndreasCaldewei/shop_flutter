import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {

  var _pageIndex = 0;
  final _screens = [HomePage(), CartPage()];
  final PageController _pageController = PageController();


  @override
  Widget build(BuildContext context) {




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
              icon: Icon(Icons.star), title: Text('Products')),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), title: Text('Cart')),
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
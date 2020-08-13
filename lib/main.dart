import 'package:flutter/material.dart';

import 'pages/pages.dart';
import 'providers/providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _pageIndex = 0;

  final _screens = [HomePage(), CartPage()];

  Widget get _currentPage {
    return _screens[_pageIndex];
  }

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        home: Scaffold(
          body: _currentPage,
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
            },
          ),
        ),
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Cart'),
    );
  }
}

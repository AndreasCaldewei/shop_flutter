import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'providers/providers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
        home: TabPage(),
        title: 'Flutter Demo',
        theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
      ),
    );
  }


}




import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/services/product_service.dart';

import 'pages/pages.dart';
import 'providers/providers.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return AppProvider(
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            visualDensity: VisualDensity.adaptivePlatformDensity,
          ),
          home: HomePage()
      ),
    );
  }
}



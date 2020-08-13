import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/services/services.dart';

class AppProvider extends StatelessWidget {
  final Widget child;

  const AppProvider({this.child});

  @override
  Widget build(BuildContext context) {


    return Provider(
        create: (_) => ProductDataService.create(),
        child: child
    );
  }
}

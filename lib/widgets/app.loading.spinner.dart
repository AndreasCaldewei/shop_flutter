import 'package:flutter/material.dart';

class AppLoadingSpinner extends StatelessWidget {
  const AppLoadingSpinner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}



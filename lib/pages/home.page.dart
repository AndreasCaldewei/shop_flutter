import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/services/services.dart';
import 'package:shop_flutter/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: FutureBuilder(
            future: Provider.of<ProductDataService>(context).getProducts(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                final List posts = json.decode(snapshot.data.bodyString);
                return _buildProducts(context, posts);
              } else {
                return AppLoadingSpinner();
              }
            },
          )
      ),
    );
  }

  ListView _buildProducts(BuildContext context, List products) {
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, index) {

        final product = products[index];


        return ListTile(
            title: Text(product['title'])
        );
      },
    );
  }
}


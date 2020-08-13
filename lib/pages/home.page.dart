import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_flutter/services/services.dart';
import 'package:shop_flutter/widgets/widgets.dart';

class HomePage extends StatefulWidget  {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
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
    return ListView.separated(
      itemCount: products.length,
      itemBuilder: (context, index) {

        final product = products[index];

        return ListTile(
            title: Text(product['title']),
        );
      },
      separatorBuilder: (context, index) {
        return Divider();
      },
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}


// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

class _$ProductDataService extends ProductDataService {
  _$ProductDataService([ChopperClient client]) {
    if (client == null) return;
    this.client = client;
  }

  final definitionType = ProductDataService;

  Future<Response> getProducts() {
    final $url = '/products';
    final $request = Request('GET', $url, client.baseUrl);
    return client.send<dynamic, dynamic>($request);
  }
}

 import 'package:chopper/chopper.dart';

part 'product_service.chopper.dart';

@ChopperApi(baseUrl: '/products')
abstract class ProductDataService extends ChopperService {

  @Get()
  Future<Response> getProducts();


  static ProductDataService create() {
    final client = ChopperClient(
        baseUrl:'https://fakestoreapi.com',
        services: [
          _$ProductDataService(),
        ],
        converter: JsonConverter()
    );
    return _$ProductDataService(client);
  }




}


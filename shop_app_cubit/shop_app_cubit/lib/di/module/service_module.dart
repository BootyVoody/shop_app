import 'package:injectable/injectable.dart';
import 'package:shop_app_cubit/service/products_service.dart';

@module
abstract class ServiceModule {
  @lazySingleton
  ProductsService productsService() => const ProductsService();
}

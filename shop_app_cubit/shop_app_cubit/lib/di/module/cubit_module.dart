import 'package:injectable/injectable.dart';
import 'package:shop_app_cubit/business/state/products/products_cubit.dart';
import 'package:shop_app_cubit/service/products_service.dart';

@module
abstract class CubitModule {
  @factoryMethod
  ProductsCubit productsCubit(ProductsService productsService) =>
      ProductsCubit(productsService);
}

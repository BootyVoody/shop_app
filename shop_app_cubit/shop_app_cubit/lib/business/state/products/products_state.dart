import 'package:shop_app_cubit/model/product.dart';
import 'package:shop_app_cubit/util/constant/enum/loading_status.dart';

class ProductsState {
  final List<Product> products;
  final LoadingStatus loadingStatus;

  ProductsState._({
    required this.products,
    required this.loadingStatus,
  });

  factory ProductsState.initial() => ProductsState._(
        products: [],
        loadingStatus: LoadingStatus.never,
      );

  ProductsState copyWith({
    List<Product>? products,
    LoadingStatus? loadingStatus,
  }) =>
      ProductsState._(
        products: products ?? this.products,
        loadingStatus: loadingStatus ?? this.loadingStatus,
      );
}

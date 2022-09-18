import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_cubit/business/state/products/products_state.dart';
import 'package:shop_app_cubit/service/products_service.dart';
import 'package:shop_app_cubit/util/constant/enum/loading_status.dart';

class ProductsCubit extends Cubit<ProductsState> {
  final ProductsService _productsService;

  ProductsCubit(this._productsService) : super(ProductsState.initial()) {
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    emit(
      state.copyWith(loadingStatus: LoadingStatus.loading),
    );

    try {
      final products = await _productsService.getProducts();

      emit(
        state.copyWith(
          products: products,
          loadingStatus: LoadingStatus.done,
        ),
      );
    } catch (error, stackTrace) {
      log(
        error.toString(),
        stackTrace: stackTrace,
      );

      emit(
        state.copyWith(loadingStatus: LoadingStatus.error),
      );
    }
  }
}

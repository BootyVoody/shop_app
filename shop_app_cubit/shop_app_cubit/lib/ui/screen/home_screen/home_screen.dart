import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app_cubit/business/state/products/products_cubit.dart';
import 'package:shop_app_cubit/business/state/products/products_state.dart';
import 'package:shop_app_cubit/di/injector.dart';
import 'package:shop_app_cubit/ui/screen/home_screen/widget/product_card.dart';

class HomeScreen extends StatelessWidget {
  final _productsCubit = locator<ProductsCubit>();

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Shop'),
        ),
        body: BlocBuilder<ProductsCubit, ProductsState>(
          bloc: _productsCubit,
          builder: (context, state) => _buildBody(state),
        ),
      );

  Widget _buildBody(ProductsState state) {
    if (state.loadingStatus.isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (state.loadingStatus.isError) return _buildLoadingError();

    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: state.products.length,
      itemBuilder: (context, index) {
        final currentProduct = state.products[index];

        return ProductCard(product: currentProduct);
      },
    );
  }

  Widget _buildLoadingError() => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(Icons.error),
            Text('Oops... There was an error loading goods.'),
          ],
        ),
      );
}

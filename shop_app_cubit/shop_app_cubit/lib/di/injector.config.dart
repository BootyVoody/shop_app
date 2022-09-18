// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shop_app_cubit/business/state/products/products_cubit.dart'
    as _i4;
import 'package:shop_app_cubit/di/module/cubit_module.dart' as _i6;
import 'package:shop_app_cubit/di/module/service_module.dart' as _i5;
import 'package:shop_app_cubit/service/products_service.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $configureDependencies(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final serviceModule = _$ServiceModule();
  final cubitModule = _$CubitModule();
  gh.lazySingleton<_i3.ProductsService>(() => serviceModule.productsService());
  gh.factory<_i4.ProductsCubit>(
      () => cubitModule.productsCubit(get<_i3.ProductsService>()));
  return get;
}

class _$ServiceModule extends _i5.ServiceModule {}

class _$CubitModule extends _i6.CubitModule {}

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:shop_app_cubit/di/injector.config.dart';

final GetIt locator = GetIt.instance;

@InjectableInit(
  initializerName: r'$configureDependencies',
  preferRelativeImports: false,
  asExtension: false,
)
void configureDependencies() => $configureDependencies(locator);

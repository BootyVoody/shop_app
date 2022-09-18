import 'package:flutter/material.dart';
import 'package:shop_app_cubit/app.dart';
import 'package:shop_app_cubit/di/injector.dart';

void main() {
  configureDependencies();

  runApp(const App());
}

import 'package:flutter/material.dart';
import 'package:shop_app_cubit/ui/screen/home_screen/home_screen.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Super app cubit',
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen(),
      );
}

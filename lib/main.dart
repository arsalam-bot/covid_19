import 'package:covid_19/splash.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/corona_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (_) => CoronaProvider(),
      )
    ], child: MaterialApp(debugShowCheckedModeBanner: false, home: Splash()));
  }
}

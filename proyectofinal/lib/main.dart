import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectofinal/routes/movPages.dart';
import 'package:proyectofinal/screens/home.dart';

import 'package:proyectofinal/services/spoon_services.dart';

void main() {
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => SpoonServices(),
        )
      ],
      child: const MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      routes: MovPage.route,
      home: const MyHomePage(title: 'Bienvenido'),
      debugShowCheckedModeBanner: false,
    );
  }
}

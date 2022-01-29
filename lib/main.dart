import 'package:films_catalog/app/view/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Catalogo de Filmes',
        theme: ThemeData(
            primarySwatch: Colors.blueGrey,
            inputDecorationTheme: const InputDecorationTheme(
                contentPadding: EdgeInsets.all(16),
                fillColor: Colors.grey,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(fontWeight: FontWeight.w300))),
        home: const HomePage());
  }
}

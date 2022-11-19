import 'package:flutter/material.dart';
import 'package:work/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
        // theme: ThemeData(
        //     visualDensity: VisualDensity.adaptivePlatformDensity,
        //     textButtonTheme: TextButtonThemeData(
        //         style: TextButton.styleFrom(
        //             textStyle: const TextStyle(fontFamily: 'Montserrat')
        //         )
        //     )
        // )
    );
  }
}
import 'package:appfesta/Paginas/homePage.dart';
import 'package:flutter/material.dart';

/*
#845EC2
#D65DB1
#FF6F91
#FF9671
#FFC75F
#F9F871
*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const HomePage(),
    );
  }
}

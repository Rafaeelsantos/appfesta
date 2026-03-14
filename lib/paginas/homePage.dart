import 'package:appfesta/widgets/topbarWidgets.dart';
import 'package:appfesta/widgets/botNavBarWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(titulo: 'Home Page'),
      body: const Center(child: Text('teste')),
      bottomNavigationBar: Navbar(),
    );
  }
}

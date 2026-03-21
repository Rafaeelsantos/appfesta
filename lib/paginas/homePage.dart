import 'package:appfesta/widgets/homeCardWidgets.dart';
import 'package:appfesta/widgets/topbarWidgets.dart';
import 'package:appfesta/widgets/botNavBarWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final Map<String, dynamic> teste = {
    "id": 1,
    "titulo": "Salão de festa place hold",
    "imagem": "https://img.olx.com.br/images/12/125525223304205.jpg",
    "distancia": 2.5,
    "distanciaTexto": "2.5 km de você",
    "preco": 400,
    "avaliacao": 4.5,
    "favorito": true,
    "categorias": ["Infantil"],
    "caracteristicas": {
      "churrasqueira": true,
      "piscina": true,
      "animais": true,
    },
    "capacidade": 50,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(titulo: 'Home Page'),
      body: Column(children: [HomeCard()]),
      bottomNavigationBar: Navbar(),
    );
  }
}

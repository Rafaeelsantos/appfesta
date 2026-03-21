import 'package:appfesta/widgets/homeCardWidgets.dart';
import 'package:appfesta/widgets/topbarWidgets.dart';
import 'package:appfesta/widgets/botNavBarWidgets.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final List<Map<String, dynamic>> ListaClientesJson = [
    {
      "id": 1,
      "titulo": "Salão de festa place hold",
      "imagem": [
        "https://img.olx.com.br/images/12/125525223304205.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWmY6DMWGwy7Q9GiPpgXu_8KtNc4HRF23w9A&s",
        "https://i.pinimg.com/564x/57/e2/e1/57e2e190082fc7966caefb61fd9286a2.jpg",
      ],
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
    },

    {
      "id": 2,
      "titulo": "Salão do Brito",
      "imagem": [
        "https://img.olx.com.br/images/12/125525223304205.jpg",
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWmY6DMWGwy7Q9GiPpgXu_8KtNc4HRF23w9A&s",
        "https://i.pinimg.com/564x/57/e2/e1/57e2e190082fc7966caefb61fd9286a2.jpg",
      ],
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
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(titulo: 'Home Page'),
      body: Column(
        children: [
          ...ListaClientesJson.map((e) => HomeCard(e)),
          //HomeCard(ListaClientesJson[0]),
          //HomeCard(ListaClientesJson[1]),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

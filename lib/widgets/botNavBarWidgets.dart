import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  Navbar({super.key});

  final indexPaginas = 4;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      iconSize: 30,
      showUnselectedLabels: false,
      showSelectedLabels: false,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.grey[400],
      currentIndex: indexPaginas,

      items: [
        BottomNavigationBarItem(
          icon: Icon(indexPaginas == 0 ? Icons.home : Icons.home_outlined),
          label: 'Início',
        ),
        BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),

        BottomNavigationBarItem(
          icon: Icon(
            indexPaginas == 2 ? Icons.favorite : Icons.favorite_border,
          ),
          label: 'Favoritos',
        ),

        BottomNavigationBarItem(
          icon: Icon(
            indexPaginas == 3 ? Icons.receipt : Icons.receipt_outlined,
          ),
          label: 'Contratos',
        ),
        BottomNavigationBarItem(
          icon: indexPaginas == 4
              ? Icon(Icons.person)
              : Icon(Icons.person_outlined),
          label: 'Perfil',
        ),
      ],
      /*
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Início'),
        BottomNavigationBarItem(icon: Icon(Icons.search_outlined), label: 'Buscar'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite_outlined), label: 'Favoritos'),
        BottomNavigationBarItem(icon: Icon(Icons.receipt_outlined), label: 'Contratos'),
        BottomNavigationBarItem(icon: Icon(Icons.person_outlined), label: 'Perfil'),
      ],*/
    );
  }
}

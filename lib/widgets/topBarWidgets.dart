import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const TopBar({super.key, required this.titulo});

  final int numNotficacoes = 2;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:
          Colors.transparent, //Deixei transparente para o gradiente aparecer
      flexibleSpace: Container(
        //Container para o gradiente
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF845EC2),
              Color(0xFFD65DB1),
              Color(0xFFFF6F91),
              Color(0xFFFF9671),
            ],
            stops: [0.0, 0.4, 0.8, 1.0],
          ),
        ),
      ),
      // Icone do APP na esqueda
      leadingWidth: 100,
      leading: IconButton(
        onPressed: () {},
        icon: Image(image: AssetImage('assets/images/placeHolder.png')),
      ),
      // Icone notificações na direita
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: () {},
            // Stack para sobrepor e formar icone de notificações com indicador
            icon: Stack(
              alignment: Alignment.topRight,
              children: [
                Icon(size: 30, color: Colors.white, Icons.notifications),
                if (numNotficacoes !=
                    0) //Esconde indicador caso não haja notificações
                  // Indicador de notificações (círculo vermelho com número)
                  Container(
                    alignment: Alignment.center,
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                    ),
                    child: Text(
                      //Caso maior que 9, exibe '9+'
                      numNotficacoes > 9 ? '9+' : numNotficacoes.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  //Obrigações do APPBAR
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

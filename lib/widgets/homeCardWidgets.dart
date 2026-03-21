import 'package:flutter/material.dart';

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  final List<String> imagens = [
    "https://img.olx.com.br/images/12/125525223304205.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWmY6DMWGwy7Q9GiPpgXu_8KtNc4HRF23w9A&s",
    "https://i.pinimg.com/564x/57/e2/e1/57e2e190082fc7966caefb61fd9286a2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Stack(
            children: [
              /// CARROSSEL
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SizedBox(
                  height: 220,
                  width: double.infinity,
                  child: PageView.builder(
                    controller: _controller,
                    itemCount: imagens.length,
                    onPageChanged: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemBuilder: (context, index) {
                      return Image.network(imagens[index], fit: BoxFit.cover);
                    },
                  ),
                ),
              ),

              /// INDICADOR (barrinhas)
              Positioned(
                bottom: 10,
                left: 0,
                right: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(imagens.length, (index) {
                    final isActive = currentIndex == index;

                    return AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      height: 6,
                      width: isActive ? 20 : 10,
                      decoration: BoxDecoration(
                        color: isActive
                            ? Colors.white
                            : Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

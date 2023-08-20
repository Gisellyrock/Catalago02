import 'package:flutter/material.dart';

class Catalogo02 extends StatefulWidget {
  const Catalogo02({super.key});

  @override
  State<StatefulWidget> createState() {
    return Estrutura();
  }
}

class Estrutura extends State<Catalogo02> {
  List<int> hoveredIndices =
      List<int>.generate(imagensComDescricoes.length, (index) => -1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
              8.0), // Reduzi o padding para melhor visualização
          child: Column(
            children: List.generate(imagensComDescricoes.length, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: Column(
                  children: [
                    buildImageRow(
                        imagensComDescricoes[index], descricoes[index], index),
                    const SizedBox(height: 16.0),
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  Widget buildImageRow(
      List<String> imagens, List<String> descricoes, int rowIndex) {
    assert(imagens.length == descricoes.length);

    double maxImageSize = 320.0;
    double horizontalSpacing = 16.0;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // Centraliza as imagens
      children: List.generate(imagens.length, (index) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalSpacing),
          child: Container(
            width: maxImageSize,
            height: maxImageSize + 100,
            decoration: BoxDecoration(
              border: Border.all(
                  color: hoveredIndices[rowIndex] == index
                      ? Colors.black
                      : Colors.transparent),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                MouseRegion(
                  onEnter: (_) =>
                      setState(() => hoveredIndices[rowIndex] = index),
                  onExit: (_) => setState(() => hoveredIndices[rowIndex] = -1),
                  child: Image.asset(
                    imagens[index],
                    fit: BoxFit.contain, // Ajuste proporcional da imagem
                    width: maxImageSize,
                    height: maxImageSize,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  descricoes[index],
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

List<List<String>> imagensComDescricoes = [
  [
    'imagens/controlecomfio.jpg',
    'imagens/controlecomfio1.jpg',
    'imagens/controlecomfio2.jpg'
  ],
  [
    'imagens/mousegamer.jpg',
    'imagens/mousegamer1.jpg',
    'imagens/mousegamer2.jpg'
  ],
  [
    'imagens/mousepadgamer.jpg',
    'imagens/mousepadgamer1.jpg',
    'imagens/mousepadgamer2.jpg',
  ],
  ['imagens/kit.jpg', 'imagens/kit1.jpg', 'imagens/kit2.jpg'],
  [
    'imagens/fonedeouvidogamer.jpg',
    'imagens/fonedeouvidogamer1.jpg',
    'imagens/fonedeouvidogamer2.jpg'
  ],
  [
    'imagens/ledparagamer.jpg',
    'imagens/ledparagamer1.jpg',
    'imagens/ledparagamer2.jpg'
  ],
];

List<List<String>> descricoes = [
  [
    'Controlador com fio para Xbox 360 R\$65,60',
    'Controlador para Nintendo Switch R\$287,11',
    'Controlador P/ Nsw Wired Lightning R\$164,84'
  ],
  [
    'Redragon MOUSE GAMER GRIFFIN R\$114,00',
    'Redragon MOUSE TITANOBOA2 M802-RGB-1 R\$219,48',
    'Gaming Mouse 7200 DPI Backlight Multi Color R\$68,90'
  ],
  [
    'Mouse Pad Havit MP839 Gamer R\$23,81',
    'Mouse Pad Gamer Iluminado led  R\$32,00',
    'Mousepad Gamer Speed Borda Costurada R\$ 22,41'
  ],
  [
    'Kit Gamer Teclado Gamer Iluminado, Mouse Gamer Com Led  R\$68,28',
    'HP, Teclado e Mouse HP, GK1100, Preto, USB, ABNT 2 R\$175,41',
    'Kit Teclado e Mouse Gamer Multilaser-tc195 Led R\$148,90'
  ],
  [
    'Headphone Fone de Ouvido Havit HV-H2232d R\$75,00',
    'Headphone Headset Over-Ear Gamer R\$107,90',
    'Headphone Kotion Gamer G2000 R\$114,30'
  ],
  [
    'Barra de Led Rítmica Rgb R\$41,00',
    'Led para decoração R\$74,90',
    'Led Neon Zelda Sword Setup Gamer R\$355,30'
  ],
];

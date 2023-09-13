import 'package:flutter/material.dart';

import '../Components/list_item.dart';
import '../Models/item.dart';

class ColorsPage extends StatelessWidget {
  final List<Item> colors = const [
    Item(
      sound: 'white.wav',
      image: 'assets/images/colors/color_white.png',
      jpName: 'Shiro',
      enName: 'White',
    ),
    Item(
      sound: 'black.wav',
      image: 'assets/images/colors/color_black.png',
      jpName: 'Kuro',
      enName: 'Black',
    ),
    Item(
      sound: 'brown.wav',
      image: 'assets/images/colors/color_brown.png',
      jpName: 'Chairo',
      enName: 'Brown',
    ),
    Item(
      sound: 'dusty yellow.wav',
      image: 'assets/images/colors/color_dusty_yellow.png',
      jpName: 'Dasutiierō',
      enName: 'Dusty Yellow',
    ),
    Item(
      sound: 'gray.wav',
      image: 'assets/images/colors/color_gray.png',
      jpName: 'Gurē',
      enName: 'Gray',
    ),
    Item(
      sound: 'green.wav',
      image: 'assets/images/colors/color_green.png',
      jpName: 'Midori',
      enName: 'Green',
    ),
    Item(
      sound: 'red.wav',
      image: 'assets/images/colors/color_red.png',
      jpName: 'Aka',
      enName: 'Red',
    ),
    Item(
      sound: 'yellow.wav',
      image: 'assets/images/colors/yellow.png',
      jpName: 'Kiiro',
      enName: 'Yellow',
    ),
  ];
  const ColorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff483229),
        title: const Text(
          'Colors',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: getListOfNumbers(colors),
      ),
    );
  }

  List<Widget> getListOfNumbers(List<Item> items) {
    List<Widget> itemsList = [];
    for (int i = 0; i < items.length; i++) {
      itemsList.add(
        ListItem(
          number: items[i],
          color: const Color(0XffA25B5B),
          itemType: 'colors',
        ),
      );
      itemsList.add(const Divider(
        thickness: 1,
        height: 0,
      ));
    }
    return itemsList;
  }
}

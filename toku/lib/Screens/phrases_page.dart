import 'package:flutter/material.dart';

import '../Components/phrase_item.dart';
import '../Models/item.dart';

class PhrasesPage extends StatelessWidget {
  final List<Item> phrases = const [
    Item(
      sound: 'dont_forget_to_subscribe.wav',
      jpName: 'Kōdoku suru koto o wasurenaide kudasai',
      enName: 'dont forget to subscribe',
    ),
    Item(
      sound: 'i_love_programming.wav',
      jpName: 'Watashi wa puroguramingu daisukidesu',
      enName: 'i love  programming',
    ),
    Item(
      sound: 'programming_is_easy.wav',
      jpName: 'Puroguramingu wa kantandesu ',
      enName: 'programming is easy',
    ),
    Item(
      sound: 'where_are_you_going.wav',
      jpName: 'Doko ni iku no',
      enName: 'where are you going',
    ),
    Item(
      sound: 'what_is_your_name.wav',
      jpName: 'Namae wa nandesu ka',
      enName: 'what is your name ?',
    ),
    Item(
      sound: 'i_love_anime.wav',
      jpName: 'Watashi wa anime ga daisukidesu',
      enName: 'i love anime',
    ),
    Item(
      sound: 'how_are_you_feeling.wav',
      jpName: 'Go kibun wa ikagadesu ka',
      enName: 'how are you feeling?',
    ),
    Item(
      sound: 'are_you_coming.wav',
      jpName: 'Kimasu ka',
      enName: 'are you coming?',
    ),
    Item(
      sound: 'yes_im_coming.wav',
      jpName: 'Hai watashi wa kite imasu',
      enName: 'yes i am coming',
    ),
  ];

  const PhrasesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff483229),
        title: const Text(
          'Phrases',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: getListOfNumbers(phrases),
      ),
    );
  }

  List<Widget> getListOfNumbers(List<Item> items) {
    List<Widget> itemsList = [];
    for (int i = 0; i < items.length; i++) {
      itemsList.add(
        PhraseItem(
          phrase: items[i],
          color: const Color(0XffCC9C75),
          itemType: 'phrases',
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

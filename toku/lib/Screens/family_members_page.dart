import 'package:flutter/material.dart';

import '../Components/list_item.dart';
import '../Models/item.dart';

class FamilyMembersPage extends StatelessWidget {
  final List<Item> familyMembers = const [
    Item(
      sound: 'father.wav',
      image: 'assets/images/family_members/family_father.png',
      jpName: 'Chichioya',
      enName: 'Father',
    ),
    Item(
      sound: 'mother.wav',
      image: 'assets/images/family_members/family_mother.png',
      jpName: 'Hahaoya',
      enName: 'Mother',
    ),
    Item(
      sound: 'son.wav',
      image: 'assets/images/family_members/family_son.png',
      jpName: 'Musuko',
      enName: 'Son',
    ),
    Item(
      sound: 'daughter.wav',
      image: 'assets/images/family_members/family_daughter.png',
      jpName: 'Musume',
      enName: 'Daughter',
    ),
    Item(
      sound: 'older bother.wav',
      image: 'assets/images/family_members/family_older_brother.png',
      jpName: 'Ani',
      enName: 'Older Brother',
    ),
    Item(
      sound: 'older sister.wav',
      image: 'assets/images/family_members/family_older_sister.png',
      jpName: 'Ane',
      enName: 'Older Sister',
    ),
    Item(
      sound: 'younger brohter.wav',
      image: 'assets/images/family_members/family_younger_brother.png',
      jpName: 'Otōto',
      enName: 'Younger Brother',
    ),
    Item(
      sound: 'younger sister.wav',
      image: 'assets/images/family_members/family_younger_sister.png',
      jpName: 'Imōto',
      enName: 'Younger Sister',
    ),
    Item(
      sound: 'grand father.wav',
      image: 'assets/images/family_members/family_grandfather.png',
      jpName: 'Ojīsan',
      enName: 'Grand Father',
    ),
    Item(
      sound: 'grand mother.wav',
      image: 'assets/images/family_members/family_grandmother.png',
      jpName: 'O bāchan',
      enName: 'Grand Mother',
    ),
  ];

  const FamilyMembersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0Xff483229),
        title: const Text(
          'Family Members',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: ListView(
        children: getListOfNumbers(familyMembers),
      ),
    );
  }

  List<Widget> getListOfNumbers(List<Item> items) {
    List<Widget> itemsList = [];
    for (int i = 0; i < items.length; i++) {
      itemsList.add(
        ListItem(
          number: items[i],
          color: const Color(0xff42032c),
          itemType: 'family_members',
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

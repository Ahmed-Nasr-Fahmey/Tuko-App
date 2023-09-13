import 'package:flutter/material.dart';
import 'package:toku/Screens/family_members_page.dart';
import 'package:toku/Screens/phrases_page.dart';

import '../Components/category_item.dart';
import 'colors_page.dart';
import 'numbers_page.dart';

class HomePAge extends StatelessWidget {
  const HomePAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0Xfffff4d9),
      appBar: AppBar(
        backgroundColor: const Color(0Xff483229),
        title: const Text(
          'Toku',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: 'Numbers',
            color: const Color(0Xff809A6F),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const NumbersPage();
              }));
            },
          ),
          Category(
            text: 'Family Members',
            color: const Color(0xff42032c),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const FamilyMembersPage();
              }));
            },
          ),
          Category(
            text: 'Colors',
            color: const Color(0XffA25B5B),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const ColorsPage();
              }));
            },
          ),
          Category(
            text: 'Phrases',
            color: const Color(0XffCC9C75),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const PhrasesPage();
              }));
            },
          ),
        ],
      ),
    );
  }
}

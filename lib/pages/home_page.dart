import 'package:flutter/material.dart';
import 'package:tuko_app/components/category_container.dart';
import 'package:tuko_app/pages/colors_page.dart';
import 'package:tuko_app/pages/family_members_page.dart';
import 'package:tuko_app/pages/numbers_page.dart';
import 'package:tuko_app/pages/phrases_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFCF1D6),
      appBar: AppBar(
        backgroundColor: Color(0xff64322B),
        title: Text(
          "TUKO APP",
          style: TextStyle(color: Colors.white, fontSize: 32),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          CategoryContainer(
            category: "Numbers",
            color: Color(0xffEF9235),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NumbersPage()),
              );
            },
          ),
          CategoryContainer(
            category: "Family members",
            color: Color(0xff5C893D),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FamilyMembers()),
              );
            },
          ),
          CategoryContainer(
            category: "Colors",
            color: Color(0xff834BAC),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ColorsPage()),
              );
            },
          ),
          CategoryContainer(
            category: "Phrases",
            color: Color(0xff4EA9CD),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PhrasesPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

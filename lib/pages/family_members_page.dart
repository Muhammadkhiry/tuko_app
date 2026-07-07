import 'package:flutter/material.dart';
import 'package:tuko_app/components/building_item.dart';
import 'package:tuko_app/models/category_model.dart';

class FamilyMembers extends StatelessWidget {
   FamilyMembers({super.key});

  final List<CategoryModel> familyMembers =  [
    CategoryModel(
      picPath: "assets/images/family_members/family_grandfather.png",
      engTxt: "Grandfather",
      japTxt: "Ojīsan",
      soundPath: "assets/sounds/family_members/grand father.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_grandmother.png",
      engTxt: "Grandmother",
      japTxt: "Obāsan",
      soundPath: "assets/sounds/family_members/grand mother.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_father.png",
      engTxt: "Father",
      japTxt: "Otōsan",
      soundPath: "assets/sounds/family_members/father.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_mother.png",
      engTxt: "Mother",
      japTxt: "Okāsan",
      soundPath: "assets/sounds/family_members/mother.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_older_brother.png",
      engTxt: "Older Brother",
      japTxt: "Onīsan",
      soundPath: "assets/sounds/family_members/older bother.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_older_sister.png",
      engTxt: "Older Sister",
      japTxt: "Onēsan",
      soundPath: "assets/sounds/family_members/older sister.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_son.png",
      engTxt: "Son",
      japTxt: "Musuko",
      soundPath: "assets/sounds/family_members/son.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_daughter.png",
      engTxt: "Daughter",
      japTxt: "Musume",
      soundPath: "assets/sounds/family_members/daughter.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_younger_brother.png",
      engTxt: "Younger Brother",
      japTxt: "Otōto",
      soundPath: "assets/sounds/family_members/younger brohter.wav",
    ),
    CategoryModel(
      picPath: "assets/images/family_members/family_younger_sister.png",
      engTxt: "Younger Sister",
      japTxt: "Imōto",
      soundPath: "assets/sounds/family_members/younger sister.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff452F25),
        title: Text("Family members", style: TextStyle(fontSize: 32)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildingItem(
            model: familyMembers[index],
            color: Color(0xff4F782F),
          );
        },
      ),
    );
  }
}

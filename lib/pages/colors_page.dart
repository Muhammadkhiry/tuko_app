import 'package:flutter/material.dart';
import 'package:tuko_app/component/building_item.dart';
import 'package:tuko_app/models/category_model.dart';

class ColorsPage extends StatelessWidget {
   ColorsPage({super.key});

  final List<CategoryModel> colors =  [
    CategoryModel(
      picPath: "assets/images/colors/color_black.png",
      engTxt: "Black",
      japTxt: "Kuro",
      soundPath: "assets/sounds/colors/black.wav",
    ),
    CategoryModel(
      picPath: "assets/images/colors/color_brown.png",
      engTxt: "Brown",
      japTxt: "Chairo",
      soundPath: "assets/sounds/colors/brown.wav",
    ),
    CategoryModel(
      picPath: "assets/images/colors/color_dusty_yellow.png",
      engTxt: "Dusty Yellow",
      japTxt: "Kusa iro",
      soundPath: "assets/sounds/colors/dusty yellow.wav",
    ),
    CategoryModel(
      picPath: "assets/images/colors/color_gray.png",
      engTxt: "Gray",
      japTxt: "Haiiro",
      soundPath: "assets/sounds/colors/gray.wav",
    ),
    CategoryModel(
      picPath: "assets/images/colors/color_green.png",
      engTxt: "Green",
      japTxt: "Midori",
      soundPath: "assets/sounds/colors/green.wav",
    ),
    CategoryModel(
      picPath: "assets/images/colors/color_red.png",
      engTxt: "Red",
      japTxt: "Aka",
      soundPath: "assets/sounds/colors/red.wav",
    ),
    CategoryModel(
      picPath: "assets/images/colors/color_white.png",
      engTxt: "White",
      japTxt: "Shiro",
      soundPath: "assets/sounds/colors/white.wav",
    ),
    CategoryModel(
      picPath:
          "assets/images/colors/yellow.png",
      engTxt: "Yellow",
      japTxt: "Kiiro",
      soundPath: "assets/sounds/colors/yellow.wav",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff452F25),
        title: Text("Colors", style: TextStyle(fontSize: 32)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildingItem(model: colors[index], color: Color(0xff7C3FA0),);
        },
      ),
    );
  }
}

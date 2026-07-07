import 'package:flutter/material.dart';
import 'package:tuko_app/component/building_item.dart';
import 'package:tuko_app/models/category_model.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
  final List<CategoryModel> numbers = [
    CategoryModel(
      picPath: "assets/images/numbers/number_one.png",
      engTxt: "One",
      japTxt: "Ichi",
      soundPath: "assets/sounds/numbers/number_one_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_two.png",
      engTxt: "Two",
      japTxt: "Ni",
      soundPath: "assets/sounds/numbers/number_two_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_three.png",
      engTxt: "Three",
      japTxt: "San",
      soundPath: "assets/sounds/numbers/number_three_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_four.png",
      engTxt: "Four",
      japTxt: "Shi",
      soundPath: "assets/sounds/numbers/number_four_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_five.png",
      engTxt: "Five",
      japTxt: "Go",
      soundPath: "assets/sounds/numbers/number_five_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_six.png",
      engTxt: "Six",
      japTxt: "Roku",
      soundPath: "assets/sounds/numbers/number_six_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_seven.png",
      engTxt: "Seven",
      japTxt: "Shichi / Nana",
      soundPath: "assets/sounds/numbers/number_seven_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_eight.png",
      engTxt: "Eight",
      japTxt: "Hachi",
      soundPath: "assets/sounds/numbers/number_eight_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_nine.png",
      engTxt: "Nine",
      japTxt: "Kyū",
      soundPath: "assets/sounds/numbers/number_nine_sound.mp3",
    ),
    CategoryModel(
      picPath: "assets/images/numbers/number_ten.png",
      engTxt: "Ten",
      japTxt: "Jū",
      soundPath: "assets/sounds/numbers/number_ten_sound.mp3",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Color(0xff452F25),
        title: Text("Numbers", style: TextStyle(fontSize: 32)),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (BuildContext context, int index) {
          return BuildingItem(model: numbers[index], color: Color(0xffEF8F2D));
        },
      ),
    );
  }
}

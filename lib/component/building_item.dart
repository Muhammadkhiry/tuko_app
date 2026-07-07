import 'package:flutter/material.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:tuko_app/models/category_model.dart';

class BuildingItem extends StatelessWidget {
  const BuildingItem({super.key, required this.model, required this.color});
  final CategoryModel model;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: color,
      child: Row(
        children: [
          Container(
            height: 100,
            color: Color(0xffFCF1D8),
            child: Image.asset(model.picPath!),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Text(
                  model.japTxt!,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                Text(
                  model.engTxt!,
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(flex: 1),
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              color: Colors.white,
              onPressed: () async {
                final sound = await SoLoud.instance.loadAsset(model.soundPath!);
                await SoLoud.instance.play(sound);
              },
              icon: Icon(Icons.play_arrow_rounded),
            ),
          ),
        ],
      ),
    );
  }
}

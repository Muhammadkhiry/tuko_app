import 'package:flutter/material.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:tuko_app/models/phrase_model.dart';

class BuildingPhrase extends StatelessWidget {
  const BuildingPhrase({super.key, required this.model, required this.color});
  final PhraseModel model;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      color: color,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Column(
              children: [
                Text(
                  model.japTxt!,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Text(
                  model.engTxt!,
                  style: TextStyle(fontSize: 18, color: Colors.white),
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

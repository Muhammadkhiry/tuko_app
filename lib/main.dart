import 'package:flutter/material.dart';
import 'package:flutter_soloud/flutter_soloud.dart';
import 'package:tuko_app/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SoLoud.instance.init();
  runApp(const TukoApp());
}

class TukoApp extends StatelessWidget {
  const TukoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

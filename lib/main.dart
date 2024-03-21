import 'package:flutter/material.dart';
import 'package:ull_act1_0514/pantallas0514/panel0514/panel_pantalla0514.dart';

void main() => runApp(const MiAppcarros());

class MiAppcarros extends StatelessWidget {
  const MiAppcarros({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Bautista carro 0514",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xffa60b0b)),
        useMaterial3: true,
      ),
      home: const PanelPantalla_0514(),
    );
  }
}

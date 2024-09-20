import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'view/detalhes_view.dart';
import 'view/inserir_view.dart';
import 'view/principal_view.dart';

void main() {
  runApp(
    DevicePreview(
      builder: (context) => const MainApp(),
    ),
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'principal',
      routes: {
        'principal': (context) => PrincipalView(),
        'detalhes': (context) => DetalhesView(),
        'inserir': (context) => InserirView(),
      },
    );
  }
}

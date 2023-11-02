import 'package:app_colegio_quipux/screens/scaffold_first_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Colegio Quipux',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF673AB7)),
        useMaterial3: true,
      ),
      home: const ColegioQuipux(),
    );
  }
}

class ColegioQuipux extends StatelessWidget {
  const ColegioQuipux({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScaffoldAppBar();
  }
}

import 'package:flutter/material.dart';

class MainTable extends StatelessWidget {
  const MainTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4), 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ColumnTable(title: "Código", data: const ['SOC001', 'SOC002', 'SOC003', 'IDM001'],),
          ColumnTable(title: "Materia", data: const ['Geografía', 'Historia', 'Filosofía', 'Español'],),
          ColumnTable(title: "Más datos", data: const ['+', '+', '+', '+'],)
        ]
      ), 
    );
  }
}

// ignore: must_be_immutable
class ColumnTable extends StatelessWidget {
  String title = "No found";
  List<String> data;
  ColumnTable({super.key, required this.title, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: const Color(0xFF016691),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
            child: Text(title, style: const TextStyle(fontSize: 18, color: Colors.white),),
          )
        ),
        Container(
          color: const Color(0xFFF9F9F9),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              child: Text(data[0], style: const TextStyle(fontSize: 18,))
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              child: Text(data[1], style: const TextStyle(fontSize: 18,))
          ),
        ),
        Container(
          color: const Color(0xFFF9F9F9),
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              child: Text(data[2], style: const TextStyle(fontSize: 18,))
          ),
        ),
        Container(
          color: Colors.white,
          child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 14),
              child: Text(data[3], style: const TextStyle(fontSize: 18,))
          ),
        ),
      ],
    );
  }
}


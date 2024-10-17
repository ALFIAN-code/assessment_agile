import 'package:flutter/material.dart';
import 'homescreen.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade100,
      alignment: Alignment.center,
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        constraints: const BoxConstraints(maxWidth: 530, maxHeight: 932),
        child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Homescreen(),
        ),
      ),
    );
  }
}

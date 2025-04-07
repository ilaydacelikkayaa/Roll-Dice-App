import 'package:flutter/material.dart';
import 'package:second_app/gradient_container.dart';
void main() {
  runApp(
     const MaterialApp(
      debugShowCheckedModeBanner: false, // opsiyonel, debug yazısını kaldırır
      home: Scaffold(
       body: GradientContainer([const Color.fromARGB(255, 10, 143, 167), const Color.fromARGB(255, 242, 183, 6)]), // ✅
      ),
    ),
  );
}


import "package:first_app/gradient_container.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: const [
          Color.fromARGB(255, 32, 6, 77),
          Color.fromARGB(255, 255, 87, 34)
        ]),
      ),
    ),
  );
}

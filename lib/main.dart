import "package:first_app/gradient_container.dart";
import "package:flutter/material.dart";

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 32, 6, 77),
          Color.fromARGB(255, 255, 87, 34)
        ]),
      ),
    ),
  );
}

import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: colors, begin: startAlignment, end: endAlignment),
      ),
      child: Center(
        child: Image.asset(
          'assets/images/dice-6.png',
          width: 200,
        ),
      ),
    );
  }
}

import "package:flutter/material.dart";

class GradientContainer extends StatelessWidget {
  GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  var activeDiceImage = 'assets/images/dice-6.png';

  void rollDice() {
    activeDiceImage = 'assets/images/dice-4.png';
    print("Changing the image");
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 200,
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
                onPressed: () {
                  rollDice();
                },
                style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    textStyle: const TextStyle(fontSize: 28)),
                child: const Text("Role Dice"))
          ],
        ),
      ),
    );
  }
}

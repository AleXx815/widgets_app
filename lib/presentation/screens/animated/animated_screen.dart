import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedScreen extends StatefulWidget {
  static const name = "animated_screen";

  const AnimatedScreen({super.key});

  @override
  State<AnimatedScreen> createState() => _AnimatedScreenState();
}

class _AnimatedScreenState extends State<AnimatedScreen> {
  double widht = 50;
  double height = 50;
  Color color = Colors.purple;
  double borderRadius = 10.0;

  void changeShape() {
    final random = Random();

    widht = random.nextInt(300) + 120;
    height = random.nextInt(300) + 120;
    color = Color.fromRGBO(
      random.nextInt(255),
      random.nextInt(255),
      random.nextInt(255),
      1,
    );
    borderRadius = random.nextInt(100) + 20;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animated Container"),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 800),
          curve: Curves.bounceInOut,
          width: widht <= 0 ? 0 : widht,
          height: height <= 0 ? 0 : height,
          decoration: BoxDecoration(
            color: color,
            borderRadius:
                BorderRadius.circular(borderRadius < 0 ? 0 : borderRadius),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: changeShape,
        child: const Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}

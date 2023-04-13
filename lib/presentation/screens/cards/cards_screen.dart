import 'package:flutter/material.dart';

class CardsSreen extends StatelessWidget {
  static const String name = "cards_screen";

  const CardsSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screen"),
      ),
      body: const Placeholder(),
    );
  }
}

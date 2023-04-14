import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const String name = "buttons_screen";

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Buttons Screen"),
      ),
      body: const _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () {
          context.pop();
        },
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text("Elevated Disabled Button"),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text("Elevated Icons Button"),
            ),
            FilledButton(
              onPressed: () {},
              child: const Text("Filled Button"),
            ),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.accessible_rounded),
              label: const Text("Filled Icon Button"),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text("Outline Button"),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.monetization_on_rounded),
              label: const Text("Outline Icon Button"),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.snowboarding_rounded),
              label: const Text("Text Icon Button"),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.man_rounded),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.man_rounded),
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(colors.primary),
                iconColor: const MaterialStatePropertyAll(Colors.yellow),
              ),
            ),
            const CustomButton(),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    // final colors = Theme.of(context).colorScheme;
    // Aquí no lo uso, pero se puede usar

    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Material(
        color: Colors.pinkAccent,
        child: InkWell(
          onTap: () {},
          child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Text(
                "Botón personalizado",
                style: TextStyle(color: Colors.white),
              )),
        ),
      ),
    );
  }
}

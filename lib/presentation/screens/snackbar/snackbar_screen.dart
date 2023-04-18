import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const name = "snackbar_screen";

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text("Hola Mundo, este es el snackbar"),
        action: SnackBarAction(
          label: "Ok!",
          onPressed: () {},
        ),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible:
          false, // No permite dar click afuera del cuadro del diálogo para salirse de él
      builder: (context) => AlertDialog(
        title: const Text(
            "Este es un texto personalizado y no hecho por flutter \n\nEstás seguro? "),
        content: const Text(
            "Datos Interesantes de relleno: \n\nSi tienes a 23 personas en una sala, hay un 50% de probabilidades de que dos de ellos cumplan años el mismo día. Si hay 57, la probabilidad es del 99%. \n\nLa probabilidad de que exista una langosta azul es de una entre dos millones. Las langostas azules son de ese color debido a una anomalía genética que hace que produzcan más cantidad de una determinada proteína que de otras. \n\nEl gorro de cocinero tiene 100 pliegues. Al parecer, pretende representar las 100 formas en que se puede cocinar un huevo."),
        actions: [
          TextButton.icon(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.cancel_outlined),
            label: const Text("Cancelar"),
          ),
          FilledButton.icon(
            onPressed: () => context.pop(),
            icon: const Icon(Icons.check_outlined),
            label: const Text("Aceptar"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbars y Diálogos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context, children: [
                  const Text(
                      "Datos Interesantes de relleno: \n\nSi tienes a 23 personas en una sala, hay un 50% de probabilidades de que dos de ellos cumplan años el mismo día. Si hay 57, la probabilidad es del 99%. \n\nLa probabilidad de que exista una langosta azul es de una entre dos millones. Las langostas azules son de ese color debido a una anomalía genética que hace que produzcan más cantidad de una determinada proteína que de otras. \n\nEl gorro de cocinero tiene 100 pliegues. Al parecer, pretende representar las 100 formas en que se puede cocinar un huevo.")
                ]);
              },
              child: const Text("Licencias usadas"),
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context),
              child: const Text("Mostrar Díalogo en pantalla"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Mostrar Snackbar"),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbar(context),
      ),
    );
  }
}

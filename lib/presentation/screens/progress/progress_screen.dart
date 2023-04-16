import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = "progress_screen";

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Progress Indicators"),
      ),
      body: const _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 30,
          ),
          Text("Circular Progress Indicator"),
          SizedBox(
            height: 30,
          ),
          CircularProgressIndicator(
            strokeWidth: 10,
            backgroundColor: Colors.black45,
          ),
          SizedBox(
            height: 30,
          ),
          Text("Circular Progress Indicator Controlado"),
          SizedBox(
            height: 30,
          ),
          _ControlledProgressIndicator(),
        ],
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

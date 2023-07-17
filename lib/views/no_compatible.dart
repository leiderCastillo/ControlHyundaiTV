
import 'package:flutter/material.dart';

class NoCompatible extends StatelessWidget {
  const NoCompatible({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Tu dispositivo no es compatible con\nInfra Rojo")
      ],
    );
  }
}
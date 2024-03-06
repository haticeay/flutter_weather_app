import 'package:flutter/material.dart';

class MaxAndMinHeatWidget extends StatelessWidget {
  const MaxAndMinHeatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Maksimum : " + 24.toString() + "°C",
          style: const TextStyle(fontSize: 18),
        ),
        Text(
          "Minumum : " + 12.toString() + "°C",
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}

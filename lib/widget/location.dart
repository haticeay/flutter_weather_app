import 'package:flutter/material.dart';

class LocationWidget extends StatelessWidget {
  final String chooseCity;
  const LocationWidget({super.key, required this.chooseCity});

  @override
  Widget build(BuildContext context) {
    return const Text(
      "Ankara",
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
    );
  }
}

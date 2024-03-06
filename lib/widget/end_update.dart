import 'package:flutter/material.dart';

class EndUpdateWidget extends StatelessWidget {
  const EndUpdateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Son Güncelleme " + TimeOfDay(hour: 20, minute: 35).format(context),
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
    );
  }
}

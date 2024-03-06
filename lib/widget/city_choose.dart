import 'package:flutter/material.dart';

class CityChooseWidget extends StatefulWidget {
  const CityChooseWidget({super.key});

  @override
  State<CityChooseWidget> createState() => _CityChooseWidgetState();
}

class _CityChooseWidgetState extends State<CityChooseWidget> {
  final _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Şehir Seç"),
      ),
      body: Form(
          child: Row(
        children: [Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
               controller: _textController,
               decoration: InputDecoration(
                labelText: "Şehir",
                hintText: "Şehir Seçin",
                border: OutlineInputBorder()
               ),
            ),
          ),
        )],
      )),
    );
  }
}

import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Segunda pantalla",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text("Regresar"),
        ),
      ),
    );
  }
}

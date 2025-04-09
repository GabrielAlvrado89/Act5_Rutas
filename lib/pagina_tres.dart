import 'package:flutter/material.dart';

class TerceraPantalla extends StatelessWidget {
  const TerceraPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tercera pantalla",
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

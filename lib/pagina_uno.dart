import 'package:flutter/material.dart';

class PrimerPantalla extends StatelessWidget {
  const PrimerPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Primer Pantalla",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
          ),
        ),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla2");
              },
              child: const Text("Segunda Pantalla"),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/pantalla3");
              },
              child: const Text("Tercer Pantalla"),
            ),
          ),
        ],
      ),
    );
  }
}

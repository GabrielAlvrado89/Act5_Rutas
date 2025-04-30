import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Segunda Pantalla",
          style: TextStyle(
            color: Colors.white, // Establece el color de la letra a blanco
            fontSize: 25.0, // Establece el tamaño de la letra a 15
          ),
        ),
        backgroundColor: Colors.orangeAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: <Widget>[
                SizedBox(
                  width: 200.0,
                  height: 100.0,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: null,
                  ),
                ),
                SizedBox(
                  width: 100.0,
                  height: 200.0,
                  child: AbsorbPointer(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff196cb0),
                      ),
                      onPressed: () {},
                      child: null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ),
        ],
      ),
    );
  }
}

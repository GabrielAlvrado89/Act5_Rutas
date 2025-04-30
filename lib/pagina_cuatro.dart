import 'package:flutter/material.dart';

class CuartaPantalla extends StatelessWidget {
  const CuartaPantalla({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuarta Pantalla'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 100.0,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                    'Botón 1'), // Agregué un texto para que sea visible
              ),
            ),
            SizedBox(
              width: 100.0,
              height: 200.0,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade200,
                  ),
                  onPressed: () {},
                  child: const Text(
                      'Botón 2'), // Agregué un texto para que sea visible
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

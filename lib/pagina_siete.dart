import 'package:flutter/material.dart';

class SeptimaPantalla extends StatefulWidget {
  const SeptimaPantalla({Key? key}) : super(key: key);

  @override
  State<SeptimaPantalla> createState() => _SeptimaPantallaState();
}

class _SeptimaPantallaState extends State<SeptimaPantalla> {
  bool _first = true;
  double _fontSize = 60;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Séptima Pantalla'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SizedBox(
            height: 120,
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: TextStyle(
                fontSize: _fontSize,
                color: _color,
                fontWeight: FontWeight.bold,
              ),
              child: const Text('Flutter'),
            ),
          ),
          TextButton(
            onPressed: () {
              setState(() {
                _fontSize = _first ? 90 : 60;
                _color = _first ? Colors.blue : Colors.red;
                _first = !_first;
              });
            },
            child: const Text(
              "Switch",
            ),
          )
        ],
      ),
    );
  }
}

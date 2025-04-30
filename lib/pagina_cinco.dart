import 'package:flutter/material.dart';

class QuintaPantalla extends StatefulWidget {
  const QuintaPantalla({Key? key}) : super(key: key);

  @override
  State<QuintaPantalla> createState() => _QuintaPantallaState();
}

class _QuintaPantallaState extends State<QuintaPantalla> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quinta Pantalla'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: Container(
            width: double.infinity,
            height: 250.0,
            color: Colors.blueGrey,
            child: AnimatedAlign(
              alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(size: 50.0),
            ),
          ),
        ),
      ),
    );
  }
}

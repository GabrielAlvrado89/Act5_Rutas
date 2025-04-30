import 'package:flutter/material.dart';

class SextaPantalla extends StatefulWidget {
  const SextaPantalla({Key? key}) : super(key: key);

  @override
  State<SextaPantalla> createState() => _SextaPantallaState();
}

class _SextaPantallaState extends State<SextaPantalla> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sexta Pantalla'),
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
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected ? Colors.blueGrey : Colors.white,
            alignment:
                selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 2),
            curve: Curves.fastOutSlowIn,
            child: const FlutterLogo(size: 75),
          ),
        ),
      ),
    );
  }
}

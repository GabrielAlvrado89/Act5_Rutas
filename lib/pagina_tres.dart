import 'package:flutter/material.dart';

class TerceraPantalla extends StatefulWidget {
  const TerceraPantalla({Key? key}) : super(key: key);

  @override
  State<TerceraPantalla> createState() => _TerceraPantallaState();
}

class _TerceraPantallaState extends State<TerceraPantalla> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tercera Pantalla",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25.0,
          ),
        ),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 30),

          // AnimatedAlign integrado
          GestureDetector(
            onTap: () {
              setState(() {
                selected = !selected;
              });
            },
            child: Container(
              width: double.infinity,
              height: 200.0,
              color: Colors.blueGrey,
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: AnimatedAlign(
                alignment: selected ? Alignment.topRight : Alignment.bottomLeft,
                duration: const Duration(seconds: 1),
                curve: Curves.fastOutSlowIn,
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: FlutterLogo(size: 50.0),
                ),
              ),
            ),
          ),

          const SizedBox(height: 30),

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

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, 0, size.width - 15, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}

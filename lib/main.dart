import 'package:flutter/material.dart';
import 'package:Alvaradorutas/pagina_uno.dart';
import 'package:Alvaradorutas/pagina_tres.dart';
import 'package:Alvaradorutas/pagina_dos.dart';

void main() => runApp(MiRutasApp());

class MiRutasApp extends StatelessWidget {
  const MiRutasApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Entre Paginas Routes",
      initialRoute: '/',
      routes: {
// When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const PrimerPantalla(),
// When navigating to the "/second" route, build the SecondScreen widget.
        '/pantalla2': (context) => const SegundaPantalla(),
        '/pantalla3': (context) => const TerceraPantalla(),
      },
    );
  }
}

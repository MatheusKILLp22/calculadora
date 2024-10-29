import 'package:calculadora/components/teclado.dart';
import 'package:calculadora/components/visor.dart';
import 'package:flutter/material.dart';
import 'package:calculadora/models/memoria.dart';
import 'package:flutter/services.dart';

class Calculatora extends StatefulWidget {
  const Calculatora({super.key});

  @override
  State<Calculatora> createState() => _CalculatoraState();
}

class _CalculatoraState extends State<Calculatora> {
  final Memoria memoria = Memoria();
  _pressionado(String comando) {
    setState(() {
      memoria.tratarDigito(comando);
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: Colors.white),
        home: Scaffold(
          body: Container(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: <Widget>[
                Visor(memoria.valorNoVisor),
                const SizedBox(height: 2),
                Teclado(_pressionado),
              ],
            ),
          ),
        ));
  }
}

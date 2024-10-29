import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Visor extends StatelessWidget {
  final String texto;
  const Visor(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: const Color.fromRGBO(48, 48, 48, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: AutoSizeText(
                  texto,
                  minFontSize: 20,
                  maxFontSize: 80,
                  maxLines: 1,
                  textAlign: TextAlign.end,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    decoration: TextDecoration.none,
                    fontSize: 80,
                    color: Color.fromRGBO(211, 211, 211, 1),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

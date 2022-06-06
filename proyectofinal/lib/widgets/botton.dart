import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Boton extends StatelessWidget {
  String titulo;
  String info;
  Boton({Key? key, required this.info, required this.titulo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(
                  titulo,
                  style: const TextStyle(color: Colors.green),
                  textAlign: TextAlign.center,
                ),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [
                      Text(
                        info,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                        textAlign: TextAlign.justify,
                      )
                    ],
                  ),
                ),
                actions: [
                  TextButton(
                    child: const Text("Aceptar"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            });
      },
      // ignore: sort_child_properties_last
      child: Text(
        titulo,
        style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold),
        textAlign: TextAlign.justify,
      ),
      color: Colors.green,
    );
  }
}

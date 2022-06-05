import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Dialogo extends StatelessWidget {
  IconData icono;
  String texto;
  String titulo;
  String info;
  Dialogo({
    Key? key,
    required this.icono,
    required this.texto,
    required this.titulo,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icono,
        color: const Color.fromARGB(255, 42, 157, 54),
      ),
      title: Text(texto),
      onTap: () {
        showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text(titulo),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: [Text(info)],
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
    );
  }
}

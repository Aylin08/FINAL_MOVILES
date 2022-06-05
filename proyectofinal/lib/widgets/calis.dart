import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectofinal/routes/routes.dart';
import 'package:proyectofinal/widgets/img.dart';
import 'package:proyectofinal/widgets/label.dart';
import '../screens/alimentos.dart';
import '../services/spoon_services.dart';

class CardList extends StatelessWidget {
  String variable;
  String direcc;
  String rutaImagen;
  CardList({
    super.key,
    required this.variable,
    required this.direcc,
    required this.rutaImagen,
  });

  @override
  Widget build(BuildContext context) {
    return CardRow(ban: variable, dire: direcc, imagen: rutaImagen);
  }
}

class CardRow extends StatelessWidget {
  String ban;
  String dire;
  String imagen;
  CardRow({
    super.key,
    required this.ban,
    required this.dire,
    required this.imagen,
  });

  @override
  Widget build(BuildContext context) {
    final mostrarInfo = Provider.of<SpoonServices>(context);
    mostrarInfo.mostrarInfo();
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
      child: Stack(children: [
        Etiqueta(etiqueta: ban, ruta: dire),
        Imagenes(direccion: imagen),
      ]),
    );
  }
}

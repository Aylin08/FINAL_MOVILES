import 'package:flutter/material.dart';

class Imagenes extends StatelessWidget {
  final String direccion;
  const Imagenes({
    Key? key,
    required this.direccion,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16.0),
      alignment: FractionalOffset.centerLeft,
      child: Image(
        image: AssetImage(direccion),
        height: 92.0,
        width: 92.0,
      ),
    );
  }
}

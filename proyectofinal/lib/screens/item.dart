import 'package:flutter/material.dart';

class Recipe extends StatelessWidget {
  final String nombre;
  final String receta;
  final String ingredientes;
  final String direccion;
  const Recipe(
      {Key? key,
      required this.nombre,
      required this.receta,
      required this.ingredientes,
      required this.direccion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scaffold(
        appBar: AppBar(
          title: Text(nombre),
          centerTitle: true,
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://theitalianbutcher.com/wp-content/uploads/2020/11/hours-bg.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                        image: AssetImage(direccion), width: 160, height: 160),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Column(
                  children: [
                    Text(
                      "Ingredientes:\n$ingredientes",
                      textAlign: TextAlign.start,
                    ),
                    Text("Preparación:\n$receta"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

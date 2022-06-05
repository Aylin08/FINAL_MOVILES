import 'package:flutter/material.dart';

class Etiqueta extends StatelessWidget {
  String etiqueta;
  String ruta;
  Etiqueta({
    Key? key,
    required this.etiqueta,
    required this.ruta,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 130.0,
        width: 500.0,
        margin: const EdgeInsets.only(left: 20.0),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 42, 157, 54),
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(8.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0,
              offset: Offset(0.0, 10.0),
            ),
          ],
        ),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                etiqueta,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 27,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () => {
                          //Navigator.popAndPushNamed(context, ruta),
                          Navigator.pushNamed(context, ruta)
                        },
                    child: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ]));
  }
}

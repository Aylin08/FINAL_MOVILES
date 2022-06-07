// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Notas extends StatelessWidget {
  const Notas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Scaffold(
      appBar: AppBar(title: const Text("Notas Alimenticios")),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://img.freepik.com/free-vector/fruits-background_34401-404.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Card(
              child: InkWell(
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(0),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(
                              'https://i.pinimg.com/736x/51/52/8f/51528f475951f4c110096da4e6d66883.jpg'))),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Text(
                      " \n Un naranja al día protege tus ojos.\nLas personas que comen a diario naranjas tienen un \n60% menos riesgo de degeneración macular asociada \na la edad (DMAE).\n"),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Card(
                  clipBehavior: Clip.antiAlias,
                  child: Text(
                      " \n Comer despacio te ayudará a ser más feliz\nAdemás de ayudarte a hacer mejor las digestiones,\n también te ayudará a combatir el estrés y por lo tanto\n a tener una vida más feliz.\n"),
                ),
              ],
            ),
            const Text(
              "\n\nEsta página se encuntra en servicio, para brinarte un mejor servicio y calidad de información",
              textAlign: TextAlign.justify,
            ),
          ]),
        ),
      ),
    ));
  }
}

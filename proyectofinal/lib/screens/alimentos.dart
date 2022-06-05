import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../services/spoon_services.dart';

class Alimentos extends StatelessWidget {
  const Alimentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mostrarInfos = Provider.of<SpoonServices>(context);
    mostrarInfos.mostrarInfo();
    return Container(
        color: Colors.amber,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Image(
                    image: NetworkImage(
                        "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/two%20oranges%20-8070-2c889df9befc3ae5e5fa4d3a3eb9f8e4@1x.jpg"),
                    width: 170,
                  ),
                  Image(
                    image: NetworkImage(
                        "https://media.istockphoto.com/photos/pouring-milk-in-the-glass-on-the-background-of-nature-picture-id535489242?k=20&m=535489242&s=612x612&w=0&h=MiVwb66VYM4fonRyt3UXDm_U9cUJNj1GbHjc_bqn5Jw="),
                    width: 170,
                    height: 125,
                  ),
                ],
              ),
              Row(
                children: [
                  Card(
                    child: InkWell(
                      child: SizedBox(
                        width: 170,
                        height: 190,
                        child: Text(
                          "Nombre: ${mostrarInfos.propiedad[0].name}\n"
                          "Calorías:${mostrarInfos.propiedad[0].calories}\n"
                          "Colesterol:${mostrarInfos.propiedad[0].cholesterolMg}\n"
                          "Carbohidratos:${mostrarInfos.propiedad[0].carbohydratesTotalG}\n"
                          "Grasas saturadas: ${mostrarInfos.propiedad[0].fatSaturatedG}\n"
                          "Fat total:${mostrarInfos.propiedad[0].fatTotalG}\n"
                          "Potasio:${mostrarInfos.propiedad[0].potassiumMg}\n"
                          "Proteínas: ${mostrarInfos.propiedad[0].proteinG}\n"
                          "Tamaño de porción: ${mostrarInfos.propiedad[0].servingSizeG}\n"
                          "Sodium: ${mostrarInfos.propiedad[0].sodiumMg}\n"
                          "Azúcar: ${mostrarInfos.propiedad[0].sugarG}\n"
                          "Fibra: ${mostrarInfos.propiedad[0].fiberG}\n",
                          style: const TextStyle(
                              color: Color.fromARGB(66, 255, 0, 0),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                  Card(
                    child: InkWell(
                      child: SizedBox(
                        width: 170,
                        height: 100,
                        child: Text(
                          "Nombre: ${mostrarInfos.propiedad[1].name}\n"
                          "Calorías:${mostrarInfos.propiedad[1].calories}\n"
                          "Colesterol:${mostrarInfos.propiedad[1].cholesterolMg}\n"
                          "Carbohidratos:${mostrarInfos.propiedad[1].carbohydratesTotalG}\n"
                          "Grasas saturadas: ${mostrarInfos.propiedad[1].fatSaturatedG}\n"
                          "Fat total:${mostrarInfos.propiedad[1].fatTotalG}\n"
                          "Potasio:${mostrarInfos.propiedad[1].potassiumMg}\n"
                          "Proteínas: ${mostrarInfos.propiedad[1].proteinG}\n"
                          "Tamaño de porción: ${mostrarInfos.propiedad[1].servingSizeG}\n"
                          "Sodium: ${mostrarInfos.propiedad[1].sodiumMg}\n"
                          "Azúcar: ${mostrarInfos.propiedad[1].sugarG}\n"
                          "Fibra: ${mostrarInfos.propiedad[1].fiberG}\n",
                          style: const TextStyle(
                              color: Color.fromARGB(66, 255, 0, 0),
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectofinal/widgets/botton.dart';
import 'package:proyectofinal/widgets/dialo.dart';

import '../services/spoon_services.dart';

class Alimentos extends StatelessWidget {
  const Alimentos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mostrarInfos = Provider.of<SpoonServices>(context);
    mostrarInfos.mostrarInfo();
    return Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/736x/04/bb/59/04bb5937562a80ad3fcc738ddce33461.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: const [
                  Image(
                      image: AssetImage("assets/img/orange.png"),
                      width: 170,
                      height: 117),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage("assets/img/milk.png"),
                    width: 170,
                    height: 135,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                      info: "Nombre: ${mostrarInfos.propiedad[0].name}\n"
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
                          "Fibra: ${mostrarInfos.propiedad[0].fiberG}",
                      titulo: "Orange"),
                  const SizedBox(
                    width: 100,
                    height: 20,
                  ),
                  Boton(
                      info: "Nombre: ${mostrarInfos.propiedad[1].name}\n"
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
                          "Fibra: ${mostrarInfos.propiedad[1].fiberG}",
                      titulo: "Milk")
                ],
              ),
              Row(
                children: const [
                  Image(
                      image: AssetImage("assets/img/potato.png"),
                      width: 170,
                      height: 117),
                  SizedBox(
                    width: 5,
                  ),
                  Image(
                    image: AssetImage("assets/img/carrots.png"),
                    width: 170,
                    height: 135,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Boton(
                      info: "Nombre: ${mostrarInfos.propiedad[2].name}\n"
                          "Calorías:${mostrarInfos.propiedad[2].calories}\n"
                          "Colesterol:${mostrarInfos.propiedad[2].cholesterolMg}\n"
                          "Carbohidratos:${mostrarInfos.propiedad[2].carbohydratesTotalG}\n"
                          "Grasas saturadas: ${mostrarInfos.propiedad[2].fatSaturatedG}\n"
                          "Fat total:${mostrarInfos.propiedad[2].fatTotalG}\n"
                          "Potasio:${mostrarInfos.propiedad[2].potassiumMg}\n"
                          "Proteínas: ${mostrarInfos.propiedad[2].proteinG}\n"
                          "Tamaño de porción: ${mostrarInfos.propiedad[2].servingSizeG}\n"
                          "Sodium: ${mostrarInfos.propiedad[2].sodiumMg}\n"
                          "Azúcar: ${mostrarInfos.propiedad[2].sugarG}\n"
                          "Fibra: ${mostrarInfos.propiedad[2].fiberG}",
                      titulo: "Potato"),
                  const SizedBox(
                    width: 100,
                    height: 20,
                  ),
                  Boton(
                      info: "Nombre: ${mostrarInfos.propiedad[3].name}\n"
                          "Calorías:${mostrarInfos.propiedad[3].calories}\n"
                          "Colesterol:${mostrarInfos.propiedad[3].cholesterolMg}\n"
                          "Carbohidratos:${mostrarInfos.propiedad[3].carbohydratesTotalG}\n"
                          "Grasas saturadas: ${mostrarInfos.propiedad[3].fatSaturatedG}\n"
                          "Fat total:${mostrarInfos.propiedad[3].fatTotalG}\n"
                          "Potasio:${mostrarInfos.propiedad[3].potassiumMg}\n"
                          "Proteínas: ${mostrarInfos.propiedad[3].proteinG}\n"
                          "Tamaño de porción: ${mostrarInfos.propiedad[3].servingSizeG}\n"
                          "Sodium: ${mostrarInfos.propiedad[3].sodiumMg}\n"
                          "Azúcar: ${mostrarInfos.propiedad[3].sugarG}\n"
                          "Fibra: ${mostrarInfos.propiedad[3].fiberG}",
                      titulo: "Carrots")
                ],
              ),
            ],
          ),
        ));
  }
}

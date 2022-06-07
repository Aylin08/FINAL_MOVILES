import 'package:flutter/material.dart';

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
                  'https://i.pinimg.com/564x/01/db/4a/01db4af85eb200658ad00b7a83d5be02.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Image(
                        image: AssetImage("assets/img/agua.png"),
                        width: 80,
                        height: 90),
                    Text(
                        "1. Toma suficiente agua\n\nTodas las células del cuerpo necesitan de\n agua para funcionar. Una adecuada\n hidratación te puede ayudar a mejorar\n tu digestión, la función de tus riñones\n y lucir una piel más hidratada")
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                        "2. Actividad física\n\n La OMS recomienda practicar 150min\n de ejercicio físico cada semana. Es decir,\n 30 minutos diarios por 5 días a la semana."),
                    Image(
                        image: AssetImage("assets/img/fis.png"),
                        width: 80,
                        height: 90),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Image(
                        image: AssetImage("assets/img/reduce.png"),
                        width: 90,
                        height: 90),
                    Text(
                        "3. Reduce o evita el consumo de bebidas\n alcohólicas\n\nEl consumo excesivo de bebidas alcohólicas\n es dañino para tu salud. La  ingesta crónica\n puede ocasionar daños al hígado, riñones,\n corazón y páncreas.\n")
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

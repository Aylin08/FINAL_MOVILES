import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:proyectofinal/screens/item.dart';

import '../services/spoon_services.dart';

class Recetas extends StatelessWidget {
  const Recetas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mostrarInfos = Provider.of<SpoonServices>(context);
    mostrarInfos.mostrarInfo();
    return Scaffold(
      appBar: AppBar(title: const Text("Recetas de la casa")),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://i.pinimg.com/736x/77/36/cb/7736cb34dd059bed33e10022306b08e3.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recipe(
                          nombre: mostrarInfos.propiedad[0].name,
                          direccion: 'assets/img/jugo.png',
                          ingredientes:
                              '8 naranjas\nMiel al gusto\n1 taza de agua\nHielo (opcional)\n',
                          receta:
                              'Desinfecta, corta y pela las naranja, licualas junto con el agua hasta que todo este incorporado, una vez realizado esto agrega el hielo y miel al gusto, listo para disfrutar.',
                        ),
                      ),
                    );
                  },
                  title: Text("${mostrarInfos.propiedad[0].name} juice"),
                  subtitle: const Text("Jugo de naranja"),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 60, 191, 4),
                    child: Text(mostrarInfos.propiedad[0].name.substring(0, 1),
                        style: const TextStyle(color: Colors.white)),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recipe(
                          nombre: mostrarInfos.propiedad[1].name,
                          direccion: 'assets/img/arroz.png',
                          ingredientes:
                              '4 1/2 Tazas de agua\n1 Raja de canela\n1 Taza de arroz remojado en agua caliente por 20 minutos y escurrido\n1 Lata de Leche Condensada\n1 Lata de Leche Evaporada\n1 Cucharada de canela molida\n',
                          receta:
                              'Calienta el agua con la canela y cuando suelte el hervor, agrega el arroz; cocina durante 15 minutos o hasta que el arroz esté tierno. Vierte la Leche, la Leche Evaporada; mezcla y continúa la cocción a fuego bajo de 20 a 25 minutos hasta que espese ligeramente.rve tibio o frío y espolvorea con canela molida.',
                        ),
                      ),
                    );
                  },
                  title: Text("Rice with ${mostrarInfos.propiedad[1].name}"),
                  subtitle: const Text("Arroz con leche"),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 60, 191, 4),
                    child: Text(mostrarInfos.propiedad[1].name.substring(0, 1),
                        style: const TextStyle(color: Colors.white)),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recipe(
                          nombre: mostrarInfos.propiedad[1].name,
                          direccion: 'assets/img/papas.png',
                          ingredientes:
                              '5 piezas papa peladas o 1 kilogramo de papas\n1 cucharadita de sal\n5 ramas perejil\n3 piezas chile serrano\n1/2 taza de jugo de limón\n1 barra de mantequilla\n',
                          receta:
                              'Corta las papas en rodajas y ponlas a hervir por 7 min, agrega  mantequilla, Licúa el jugo de limón con los chiles serranos, la mantequilla y 1cdta de sal, asa la mezcla de serrano con limón por un cedazo. Coloca la mezcla de serrano, mantequilla y limón con las papas , mezcla y deja que las papas se cocinen en el jugo por unos 5 minutos. Coloca en el gratinador la charola del horno por unos 3 minutos. Esparce perejil cortado finamente para decorar y dar mas sabor',
                        ),
                      ),
                    );
                  },
                  title: Text("Baked ${mostrarInfos.propiedad[2].name}"),
                  subtitle: const Text("Papas al horno"),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 60, 191, 47),
                    child: Text(
                      mostrarInfos.propiedad[2].name.substring(0, 1),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  trailing: const Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Recipe(
                          nombre: mostrarInfos.propiedad[1].name,
                          direccion: 'assets/img/zana.png',
                          ingredientes:
                              '10 zanahorias, lavadas y peladas\n4 limones\n1/2 cucharadas de consomé de pollo en polvo\n1 cucharada de azúcar\nal gusto de sal y pimienta\n1/2 tazas de aceite de oliva\n1/4 tazas de uva pasa\n',
                          receta:
                              'Corta las zanahorias en tiritas.En un recipiente hondo mezcla el jugo de limón, la sal, pimienta, azúcar y consomé de pollo en polvo. Agrega a la vinagreta el aceite de oliva. Mezcla las zanahorias bien con el aderezo. Agrega las pasas e integra.',
                        ),
                      ),
                    );
                  },
                  title: Text("${mostrarInfos.propiedad[3].name} salad"),
                  subtitle: const Text("Ensalada de zanahoria"),
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 60, 191, 4),
                    child: Text(
                      mostrarInfos.propiedad[3].name.substring(0, 1),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  trailing:
                      const Icon(Icons.arrow_forward_ios, color: Colors.white),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyectofinal/widgets/dialo.dart';

import '../routes/routes.dart';
import '../services/spoon_services.dart';
import '../widgets/calis.dart';

class Seleccion extends StatefulWidget {
  const Seleccion({Key? key}) : super(key: key);

  @override
  State<Seleccion> createState() => _SeleccionState();
}

class _SeleccionState extends State<Seleccion> {
  @override
  Widget build(BuildContext context) {
    final mostrarInfos = Provider.of<SpoonServices>(context);
    mostrarInfos.mostrarInfo();
    return Scaffold(
        endDrawer: Drawer(
            child: ListView(padding: EdgeInsets.zero, children: [
          DrawerHeader(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                Color.fromARGB(255, 54, 138, 57),
                Color.fromARGB(255, 49, 159, 53)
              ])),
              child: Column(
                children: <Widget>[
                  Material(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/img/apple.png",
                          height: 70, width: 70),
                    ),
                  ),
                  const Text(
                    'Estilo saludable',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  )
                ],
              )),
          Dialogo(
              icono: Icons.info,
              texto: "Acerca de nosotros",
              titulo: "Información",
              info:
                  "Estilo de vida saludable es una aplicación desarrollada exclusivamente para un proyecto escolar"),
          Dialogo(
              icono: Icons.help,
              texto: "Ayuda",
              titulo: "Ayuda",
              info:
                  "Estilo de vida de saludable, cuenta con diferentes opciones de mejora alimenticia, si se desea obtener mayor información solo basta con dar click en la opción deseada."),
          Dialogo(
              icono: Icons.contact_page,
              texto: "Contáctanos",
              titulo: "Contáctanos",
              info:
                  "Si desea obtener mayor información sobre vida saludable, puede contactarnos al siguiente número 646-256-35-11."),
        ])),
        appBar: AppBar(
          title: const Text("Estilo de vida saludable"),
        ),
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/236x/07/d2/6b/07d26b483d444137fa6c33c0075f4c0b.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CardRow(
                    ban: "    Alimentos ",
                    dire: Routes.alimentos,
                    imagen: "assets/img/frutas.png",
                  ),
                  CardRow(
                      ban: "Recetas",
                      dire: Routes.recetas,
                      imagen: "assets/img/recetas.png"),
                  CardRow(
                      ban: "Tips",
                      dire: Routes.tips,
                      imagen: "assets/img/tips.png"),
                  CardRow(
                      ban: "Notas",
                      dire: Routes.tips,
                      imagen: "assets/img/notas.png")
                ],
              ),
            ),
          ),
        ));
  }
}

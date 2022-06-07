import 'package:flutter/material.dart';
import 'package:proyectofinal/routes/routes.dart';
import 'package:proyectofinal/screens/alimentos.dart';
import 'package:proyectofinal/screens/notas.dart';

import 'package:proyectofinal/screens/recetas.dart';
import 'package:proyectofinal/screens/tips.dart';

abstract class MovPage {
  static Map<String, Widget Function(BuildContext)> route = {
    Routes.alimentos: (BuildContext context) => const Alimentos(),
    Routes.recetas: (BuildContext context) => const Recetas(),
    Routes.tips: (BuildContext context) => const Tips(),
    Routes.notas: (BuildContext context) => const Notas(),
  };
}

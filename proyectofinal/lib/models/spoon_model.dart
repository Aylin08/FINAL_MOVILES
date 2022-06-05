// To parse this JSON data, do
//
//     final dieta = dietaFromMap(jsonString);

import 'dart:convert';

class Dieta {
  Dieta({
    this.items,
  });

  List<Item>? items;

  factory Dieta.fromJson(String str) => Dieta.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Dieta.fromMap(Map<String, dynamic> json) => Dieta(
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "items": List<dynamic>.from(items!.map((x) => x.toMap())),
      };
}

class Item {
  Item({
    required this.sugarG,
    required this.fiberG,
    required this.servingSizeG,
    required this.sodiumMg,
    required this.name,
    required this.potassiumMg,
    required this.fatSaturatedG,
    required this.fatTotalG,
    required this.calories,
    required this.cholesterolMg,
    required this.proteinG,
    required this.carbohydratesTotalG,
  });

  double sugarG;
  double fiberG;
  int servingSizeG;
  int sodiumMg;
  String name;
  int potassiumMg;
  double fatSaturatedG;
  double fatTotalG;
  double calories;
  int cholesterolMg;
  double proteinG;
  double carbohydratesTotalG;

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        sugarG: json["sugar_g"].toDouble(),
        fiberG: json["fiber_g"].toDouble(),
        servingSizeG: json["serving_size_g"].toInt(),
        sodiumMg: json["sodium_mg"].toInt(),
        name: json["name"].toString(),
        potassiumMg: json["potassium_mg"].toInt(),
        fatSaturatedG: json["fat_saturated_g"].toDouble(),
        fatTotalG: json["fat_total_g"].toDouble(),
        calories: json["calories"].toDouble(),
        cholesterolMg: json["cholesterol_mg"].toInt(),
        proteinG: json["protein_g"].toDouble(),
        carbohydratesTotalG: json["carbohydrates_total_g"].toDouble(),
      );

  Map<String, dynamic> toMap() => {
        "sugar_g": sugarG,
        "fiber_g": fiberG,
        "serving_size_g": servingSizeG,
        "sodium_mg": sodiumMg,
        "name": name,
        "potassium_mg": potassiumMg,
        "fat_saturated_g": fatSaturatedG,
        "fat_total_g": fatTotalG,
        "calories": calories,
        "cholesterol_mg": cholesterolMg,
        "protein_g": proteinG,
        "carbohydrates_total_g": carbohydratesTotalG,
      };
}

import 'dart:convert';
import 'package:food_app/model/meal_item.dart';

ResponseFilter responseFilterFromJson(
  String string,
) =>
    ResponseFilter.fromJson(jsonDecode(string));

String responseFilterToJson(ResponseFilter data) => jsonEncode(data);

class ResponseFilter {
  ResponseFilter({this.meals});

  List<Meal>? meals;

  factory ResponseFilter.fromJson(Map<String, dynamic> json) => ResponseFilter(
      meals: List<Meal>.from(json['meals'].map((e) => Meal.fromJson(e))));

  Map<String, dynamic> toJson() =>
      {"meals": List<dynamic>.from(meals!.map((e) => e.toJson()))};
}

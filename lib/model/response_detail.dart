import 'dart:convert';

ResponseDetail responseDetailFromJson(
  String string,
) =>
    ResponseDetail.fromJson(jsonDecode(string));

class ResponseDetail {
  List<Map<String, dynamic>> meals;

  ResponseDetail({required this.meals});

  factory ResponseDetail.fromJson(Map<String, dynamic> json) => ResponseDetail(
        meals: List<Map<String, dynamic>>.from(json['meals'].map(
            (e) => Map.from(e).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      );

  Map<String, dynamic> toJson() => {
        "meals": List<dynamic>.from(meals.map(
            (e) => Map.from(e).map((k, v) => MapEntry<String, dynamic>(k, v)))),
      };
}
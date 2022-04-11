import 'package:flutter/material.dart';
import 'package:food_app/model/response_filter.dart';
import 'package:food_app/page/detail_page.dart';
import 'package:food_app/ui/item_meals.dart';

Widget listMeals(ResponseFilter? responseFilter) {
  if (responseFilter == null) {
    return Container();
  }
  return ListView.builder(
    itemCount: responseFilter.meals!.length,
    itemBuilder: (context, index) {
      var itemMeal = responseFilter.meals![index];

      return InkWell(
        splashColor: Colors.blue,
        child: itemMeals(itemMeal.idMeal, itemMeal.strMeal, itemMeal.strMealThumb),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return DetailPage(idMeal: itemMeal.idMeal!);
          }));
        },
      );
    },
  );
}
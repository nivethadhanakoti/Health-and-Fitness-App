import 'package:flutter/material.dart';
import 'food.dart';

class DietPage extends StatelessWidget {
  final List<List<Food>> _foods = [
    [
      Food(name: 'Apple', calories: 95),
      Food(name: 'Almonds', calories: 161),
      Food(name: 'Chicken Breast', calories: 165),

      Food(name: 'Banana', calories: 105),
      Food(name: 'Quinoa', calories: 222),
      Food(name: 'Salmon', calories: 206),

    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Diet Page'),
      ),
      body: ListView.builder(
        itemCount: _foods.length,
        itemBuilder: (context, index) {
          final dayFoods = _foods[index];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Day ${index + 1}'),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dayFoods.length,
                itemBuilder: (context, index) {
                  final food = dayFoods[index];
                  return ListTile(
                    title: Text(food.name),
                    trailing: Text('${food.calories} cal'),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
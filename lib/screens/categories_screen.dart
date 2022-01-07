import 'package:flutter/material.dart';
import 'package:meals/data/dummy_date.dart';
import 'package:meals/widgets/category_item_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      children: categoriesData
          .map((categoryData) => CategoryItemWidget(
                title: categoryData.title,
                color: categoryData.color,
                id: categoryData.id,
              ))
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        // crossAxisSpacing: 20,
        // mainAxisExtent: 20,
      ),
    );
  }
}

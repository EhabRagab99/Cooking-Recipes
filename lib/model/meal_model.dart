enum Complexity { Simple, Challenging, Hard }
enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class MealModel {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final Complexity complexity;
  final Affordability affordability;

  final bool isGlutenFree, isLactoseFree, isVegan, isVegetarian;
  const MealModel(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.categories,
      required this.affordability,
      required this.complexity,
      required this.duration,
      required this.ingredients,
      required this.isGlutenFree,
      required this.isLactoseFree,
      required this.isVegan,
      required this.isVegetarian,
      required this.steps});
}

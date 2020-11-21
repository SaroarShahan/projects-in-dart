void main() {
  var restaurants = [
    {
      "name": "PizzaHut",
      "cuisine": "Bangladesh",
      "ratings": [4.0, 4.5, 4.0],
    },
  ];

  for (var restaurant in restaurants) {
    final ratings = restaurant["ratings"] as List<double>;
    var total = 0.0;

    for (var rating in ratings) {
      total += rating;
    }
    final avg = total / ratings.length;
    restaurant["avgRating"] = avg.toStringAsFixed(2);

    print(restaurant);
  }
}

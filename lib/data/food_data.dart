
class Food {
final String id;
final String name;
final String imagePath;
final String category;
final String description;
final double price;
final double discount;
final double ratings;

Food({this.id,this.name,this.imagePath,
      this.category,this.description,this.price,this.discount,this.ratings});


}
final foods =[

  Food(
    id: "1",
    name: "Hamburger",
    imagePath: "assets/images/hamburger.png",
    category: "1",
    price: 22,
    discount: 33.5,
    ratings: 99,
  ),
  Food(
    id: "2",
    name: "Pizza",
    imagePath: "assets/images/pizza.png",
    category: "2",
    price: 25,
    discount: 35.5,
    ratings: 88,
  )
  ];

class Item {
  final String name;
  final String imageUrl;
  final int price;
  final String description;

  Item({this.name, this.imageUrl, this.description, this.price});
  factory Item.fromJSON(Map<String, dynamic> data) {
    return new Item(
      name: data["Name"],
      imageUrl: data["ImageURL"],
      price: data["Price"],
      description: data["Description"],
    );
  }
}
class itemModel {
  final String imageItem;
  final String name;
  final String price;

  itemModel({
    required this.imageItem,
    required this.name,
    required this.price,
  });

  factory itemModel.fromJson(Map<String, dynamic> json) => itemModel(
        imageItem: json['id'],
        name: json['status'],
        price: json['date'],
      );
}

List<itemModel> listOfItems = [
  itemModel(
    imageItem: "assets/image/mbox.jpeg",
    name: "Surgical Mask",
    price: "Rs.120.00",
  ),
  itemModel(
    imageItem: "assets/image/sanid.jpeg",
    name: "Hand Sanitizer",
    price: "Rs.200.00",
  ),
  itemModel(
    imageItem: "assets/image/dia.jpeg",
    name: "Baby diaphere",
    price: "Rs.900.00",
  ),
  itemModel(
    imageItem: "assets/image/vitc.jpeg",
    name: "C Tablets",
    price: "Rs.900.00",
  ),
  itemModel(
    imageItem: "assets/image/dia.jpeg",
    name: "Baby diaphere",
    price: "Rs.1,140.00",
  ),
  itemModel(
    imageItem: "assets/image/milk.jpeg",
    name: "Diasure 400G",
    price: "Rs.2,4900.00",
  ),
  itemModel(
    imageItem: "assets/image/sheild.jpeg",
    name: "Face Sheild",
    price: "Rs.200.00",
  ),
  itemModel(
    imageItem: "assets/image/milk.jpeg",
    name: "Diasure 400G",
    price: "Rs.2,4900.00",
  ),
  itemModel(
    imageItem: "assets/image/sheild.jpeg",
    name: "Face Sheild",
    price: "Rs.200.00",
  ),
];

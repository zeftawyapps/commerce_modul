
import 'cat_model.dart';

class ProductionModel extends CategoryModel{
  int prodId;
  String name;
  String img;
  double price;
  String description;
  double rate = 4.5;
  ProductionModel(
      {required this.prodId,
      required this.name,
      required this.img,
      required this.price,
      required this.description ,
      required this.rate
      })
      : super(catId: prodId, name: name, img: img);

  factory ProductionModel.formJson(Map<String, dynamic> json) {
    return ProductionModel(
        prodId: json["id"],
        name: json["name"],
        img: json["image_link"],
        price: double.parse(json["price"]),
        description: json["description"] ,
    rate: double.parse(json["rate"])
    );

  }
}
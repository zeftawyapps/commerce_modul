
import 'package:kurtoba_module/model/prod_model.dart';

class PayModel extends ProductionModel {

  int quantity = 1;

  PayModel(
      {
      required int prodId,
      required String name,
      required String img,
      required double price,
        required this.quantity,
      required String description ,
      required double rate})
      : super(
            prodId: prodId,
            name: name,
            img: img,
            price: price,
            description: description ,
            rate: rate);


}
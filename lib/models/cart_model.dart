import 'package:medecin_app/models/medicine_model.dart';

class CartModel {
  final MedicineModel medicine;
  late int quantity;

  CartModel({required this.medicine, required this.quantity});
}

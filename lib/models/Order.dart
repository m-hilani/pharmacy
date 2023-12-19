import 'package:medecin_app/models/medicine_model.dart';

class Order {
  final int id;
  final List<String> medicines;
  final List<int> quantities;
  final String state;
  final bool paid;

  Order(
      {required this.id,
      required this.medicines,
      required this.quantities,
      required this.state,
      required this.paid});

  factory Order.fromJson(Map<String, dynamic> json) {
    return Order(
        id: json['id'],
        medicines: json['manufacturer'],
        quantities: json['price'],
        state: json['quantity_available'],
        paid: json['scientific_name']);
  }
}

enum OrderState { preparing, sending, delivered }

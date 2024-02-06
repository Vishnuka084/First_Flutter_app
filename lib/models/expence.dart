import 'package:uuid/uuid.dart';

// create a uniqe id using uuid
final uuid = const Uuid().v4();

// enum for category
enum Category { food, travel, leasure, work }

class ExpenceModel {
  //constructor
  ExpenceModel(
      {required this.amount,
      required this.date,
      required this.title,
      required this.category})
      : id = uuid;

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
}

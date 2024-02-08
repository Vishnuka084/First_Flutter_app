import 'package:expence_master_app/models/expence.dart';
import 'package:expence_master_app/pages/expences.dart';
import 'package:expence_master_app/server/categories_adapter.dart';
import 'package:flutter/material.dart';

void main() async {
  //init hive
  await Hive.initFlutter();
  Hive.registerAdapter(ExpenceModelAdapter());
  Hive.registerAdapter(CategoryAdapter());

  await Hive.openBox("expenceDatabase");

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: Expences());
  }
}

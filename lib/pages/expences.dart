import 'package:expence_master_app/models/expence.dart';
import 'package:expence_master_app/pages/widgets/add_new_expence.dart';
import 'package:expence_master_app/pages/widgets/expence_list.dart';
import 'package:flutter/material.dart';

class Expences extends StatefulWidget {
  const Expences({super.key});

  @override
  State<Expences> createState() => _ExpencesState();
}

class _ExpencesState extends State<Expences> {
  //expenceList
  final List<ExpenceModel> _expenceList = [
    ExpenceModel(
        amount: 12.5,
        date: DateTime.now(),
        title: "Foot Ball",
        category: Category.leasure),
    ExpenceModel(
        amount: 10,
        date: DateTime.now(),
        title: "Carrot",
        category: Category.food),
    ExpenceModel(
        amount: 20,
        date: DateTime.now(),
        title: "Bag",
        category: Category.travel)
  ];

  //function to open  a model overly
  void _openAddExpencesOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return AddNewExpences();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Expence Master"),
        backgroundColor: const Color.fromARGB(255, 131, 18, 184),
        elevation: 0,
        actions: [
          Container(
            color: Colors.yellow,
            child: IconButton(
              onPressed: _openAddExpencesOverlay,
              icon: const Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          ExpenceList(expenceList: _expenceList),
        ],
      ),
    );
  }
}

import 'package:expence_master_app/models/expence.dart';
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
        category: Category.food)
  ];

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
              onPressed: () {},
              icon: const Icon(Icons.add),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: _expenceList.length,
              itemBuilder: (context, index) {
                return Text(_expenceList[index].title);
              },
            ),
          ),
        ],
      ),
    );
  }
}

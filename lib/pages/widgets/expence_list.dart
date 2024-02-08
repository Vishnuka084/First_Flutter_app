import 'package:flutter/material.dart';

class ExpenceList extends StatelessWidget {
  const ExpenceList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
            child: ListView.builder(
              itemCount: _expenceList.length,
              itemBuilder: (context, index) {
                return Text(_expenceList[index].title);
              },
            ),
          ),;
  }
}
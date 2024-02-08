import 'package:flutter/material.dart';
import 'package:expence_master_app/models/expence.dart';

class AddNewExpences extends StatefulWidget {
  const AddNewExpences({super.key});

  @override
  State<AddNewExpences> createState() => _AddNewExpenceState();
}

class _AddNewExpenceState extends State<AddNewExpences> {
  final _titleController = TextEditingController();
  final _amountController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _titleController.dispose();
    _amountController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //title text filed
        TextField(
          controller: _titleController,
          decoration: const InputDecoration(
            hintText: "Add New expence title",
            label: Text("Tile"),
          ),
          keyboardType: TextInputType.text,
          maxLength: 50,
        ),
        Row(
          children: [
            // amount
            Expanded(
              child: TextField(
                controller: _amountController,
                decoration: const InputDecoration(
                  helperText: "Enter the amount",
                  label: Text("Amount"),
                ),
                keyboardType: TextInputType.number,
              ),
            ),

            // datapicker
            Expanded(
                child: Row(
              children: [
                Text("2023/2/3"),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.date_range_outlined),
                ),
              ],
            ))
          ],
        ),

        Row(
          children: [
            DropdownButton(
              items: Category.values
                  .map(
                    (category) => DropdownMenuItem(
                      value: Category,
                      child: Text(category.name),
                    ),
                  )
                  .toList(),
              onChanged: (value) {},
            ),
          ],
        )
      ],
    );
  }
}

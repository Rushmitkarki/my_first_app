import 'package:flutter/material.dart';

import '../model/arithmetic_model.dart';
//POJO

class ArithmeticScreen extends StatefulWidget {
  const ArithmeticScreen({super.key});

  @override
  State<ArithmeticScreen> createState() => _ArithmeticScreenState();
}

class _ArithmeticScreenState extends State<ArithmeticScreen> {
// Delcare variables
  double? first;
  double? second;
  double result = 0;
  String? group;

  //Relationship
  // Loosley coupled
  ArithmeticModel? arithmeticModel;

  // Create global key for form
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Arithmetic"),
        backgroundColor: Colors.blue,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    first = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter First No',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter first no";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                TextFormField(
                  onChanged: (value) {
                    second = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter Second No',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter second no";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 8),
                ListTile(
                  title: const Text('add'),
                  leading: Radio(
                    value: 'add',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('subtract'),
                  leading: Radio(
                    value: 'subtract',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('multiply'),
                  leading: Radio(
                    value: 'multiply',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                ListTile(
                  title: const Text('divide'),
                  leading: Radio(
                    value: 'divide',
                    groupValue: group,
                    onChanged: (String? value) {
                      setState(() {
                        group = value;
                      });
                    },
                  ),
                ),
                // Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        setState(
                          () {
                            arithmeticModel =
                                ArithmeticModel(first: first!, second: second!);
                            result = arithmeticModel!.calculate(group);
                          },
                        );
                      }
                    },
                    child: const Text(
                      'Calculate',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 8),

                // Display information
                Text(
                  'After $group',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'is $result',
                  style: const TextStyle(
                    fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

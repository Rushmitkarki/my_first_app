import 'package:first_app/model/area_circle_model.dart';
import 'package:flutter/material.dart';

class AreaCircleScreen extends StatefulWidget {
  const AreaCircleScreen({super.key});

  @override
  State<AreaCircleScreen> createState() => _AreaCircleScreenState();
}

class _AreaCircleScreenState extends State<AreaCircleScreen> {
  double? radius;
  double area = 0;

  AreaCircleModel? areaCircleModel;

  final formKey = GlobalKey<FormState>();
  var gap = const SizedBox(
    height: 8,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Area of Circle",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          elevation: 0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  onChanged: (value) {
                    radius = double.parse(value);
                  },
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                    labelText: "Radius",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the radius";
                    }
                    return null;
                  },
                ),
                gap,
                ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      setState(() {
                        areaCircleModel = AreaCircleModel(
                          radius: radius!,
                        );
                        area = areaCircleModel!.calculate();
                      });
                    }
                  },
                  child: const Text("Calculate"),
                ),
                gap,
                RichText(
                  text: TextSpan(
                      text: 'A',
                      style: const TextStyle(
                        color: Colors.yellow,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        backgroundColor: Colors.green,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: "rea of circle is $area",
                            style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ))
                      ]),
                )
              ],
            ),
          ),
        ));
  }
}

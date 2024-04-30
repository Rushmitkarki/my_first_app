import 'package:first_app/commen_weiget/my_button.dart';
import 'package:first_app/commen_weiget/my_textform_field.dart';
import 'package:flutter/material.dart';

class UserDetailsForm extends StatefulWidget {
  const UserDetailsForm({super.key});

  @override
  State<UserDetailsForm> createState() => _UserDetailsFormState();
}

class _UserDetailsFormState extends State<UserDetailsForm> {
  int? first;
  int? second;

  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Button Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    first = int.parse(value);
                  });
                },
                text: 'Enter First No',
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextFormField(
                onChanged: (value) {
                  setState(() {
                    second = int.parse(value);
                  });
                },
                text: 'Enter second No',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: MyButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int result = first! + second!;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Sum is $result'),
                        ),
                      );
                    }
                  },
                  text: 'ADD',
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: MyButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      int result = first! * second!;
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Multiplication is $result'),
                        ),
                      );
                    }
                  },
                  text: 'Multiply',
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

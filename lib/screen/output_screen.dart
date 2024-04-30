import 'package:flutter/material.dart';

class OutputScreen extends StatelessWidget {
  final String title;
  const OutputScreen({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Hello $title"),
        ),
      ),
    );
  }
}

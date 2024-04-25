import 'package:flutter/material.dart';

class StarScreen extends StatelessWidget {
  const StarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.pink,
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.star),
              Spacer(),
              Icon(Icons.star),
              Icon(Icons.star),
            ]),
      ),
    );
  }
}

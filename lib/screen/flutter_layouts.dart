import 'package:flutter/material.dart';

class FlutterLayouts extends StatelessWidget {
  const FlutterLayouts({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlutterLayouts'),
        centerTitle: true,
      ),
      body: Container(
        
        color: Colors.blue[100],
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Icon(Icons.phone),
                Text('Call'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.route),
                Text('Route'),
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text('Share'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

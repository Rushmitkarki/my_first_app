import 'package:first_app/commen_weiget/common_weiget.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListTitle'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i <= 100; i++) ...{
              if (i % 2 != 0) ...{
                ListTileWidget(
                  index: i,
                ),
              },
            }
          ],
        ),
      ),
    );
  }
}

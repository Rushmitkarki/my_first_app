import 'package:first_app/commen_weiget/my_button.dart';
import 'package:flutter/material.dart';

class FlexibaleExpandedScreen extends StatelessWidget {
  const FlexibaleExpandedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flexibal screen'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Flexible(
              fit: FlexFit.loose,
              flex: 1,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.amber,
                ),
                child: Center(
                  child: MyButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Button 1'),
                          duration: Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      text: 'button 1'),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                ),
                child: Center(
                  child: MyButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .showSnackBar(const SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('Button 2'),
                          duration: Duration(seconds: 1),
                          behavior: SnackBarBehavior.floating,
                        ));
                      },
                      text: 'button 2'),
                ),
              ),
            )
          ],
        ));
  }
}

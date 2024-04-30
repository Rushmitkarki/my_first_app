import 'package:first_app/screen/flexibal_expanded_screen.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FlexibaleExpandedScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

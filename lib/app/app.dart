import 'package:flutter/material.dart';

import '../screen/list_tile_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ListTileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

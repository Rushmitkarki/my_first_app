import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({required this.index,super.key});
  final index;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.face_4),
      title: Text("Rushmit $index"),
      subtitle: const Text("Kathmandu, Neapl"),
      trailing: const Icon(Icons.delete),
      onTap: () {
        debugPrint("hello rushmit");
      },
    );
  }
}

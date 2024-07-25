// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import "package:flutter/widgets.dart";

class SheetContent extends StatefulWidget {
  const SheetContent({super.key});

  @override
  State<SheetContent> createState() => _SheetContentState();
}

class _SheetContentState extends State<SheetContent> {
  var items = List<String>.generate(50, (i) => 'List $i');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: GFListTile(
              titleText: items[index],
              subTitleText: 'hello',
              icon: const Icon(Icons.adb),
            ),
          );
        },
      ),
    );
  }
  
  // ignore: non_constant_identifier_names
  GFListTile({required String titleText, required String subTitleText, required Icon icon}) {}
}
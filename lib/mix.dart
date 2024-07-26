import 'package:flutter/material.dart';
import 'package:myapp/drawer.dart';
import 'package:getwidget/getwidget.dart';

class MixPage extends StatefulWidget {
  const MixPage({super.key});

  @override
  State<MixPage> createState() => _MixPageState();
}

class _MixPageState extends State<MixPage> {
  var items = List<String>.generate(20, (i) => 'สุดหล่อ $i');


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Mix View"),
      ),
      drawer: const MyDrawer(),
      body: Column(
        children: [
          Expanded(
            child:GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemBuilder: (context, index) {
                return Card(
                  child: Center(
                    child: Text('Item $index'),
                  ),
                );
              },
                itemCount: 6, 
              ),
            ),
            Expanded(
              child:ListView.builder(
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
              subTitleText: 'computer science',
              icon: const Icon(Icons.favorite),
            ),
          );
        },
      ),
            ),
        ],
      )
     );
  }
}
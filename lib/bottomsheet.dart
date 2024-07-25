import 'package:flutter/material.dart';
import 'package:myapp/drawer.dart'; 
import 'package:myapp/sheet_content.dart'; 

class MybottomsheetPage extends StatefulWidget {
  const MybottomsheetPage({super.key});

  @override
  State<MybottomsheetPage> createState() => _MybottomsheetPageState();
}

class _MybottomsheetPageState extends State<MybottomsheetPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar : AppBar(
        title: Text("My Bottom Sheet"),
      ),
      drawer: MyDrawer(),
      body: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
                    const Center(child: SizedBox(height: 24)),
                    ElevatedButton(
                        onPressed: () {
                          showModalBottomSheet(context: context, builder: (BuildContext context) { 
                            return SheetContent();
                           }, );
                        },
                        child:const Text('Open Bottom Sheet',
                        style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ],
      ),
    );

  }
}
import 'package:flutter/material.dart';

class myTest extends StatelessWidget {
  const myTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(child: Text("Testing FAB")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FAB clicked!");
        },
        child: Icon(Icons.add),
      ),
    );
  
  }
}

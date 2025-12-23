import 'package:flutter/material.dart';

class MyBuilder extends StatelessWidget {
  const MyBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  drawer: Drawer(),
  appBar: AppBar(
    title: Text('Builder Example'),
          
    actions: [
      
      Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Scaffold.of(context).openDrawer(); 
            },
          );
        },
      ),
    ],
  ),
);

  }
}
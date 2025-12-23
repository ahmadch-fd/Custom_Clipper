import 'dart:ui';

import 'package:flutter/material.dart';

class MyTransform extends StatefulWidget {
  const MyTransform({super.key});
  @override
  State<MyTransform> createState() => _MyTransformState();
}

class _MyTransformState extends State<MyTransform> {
  List<Color> mycolorContainer = [
    Colors.black,
    Colors.amber,
    Colors.lightBlueAccent,
    Colors.redAccent,
  ];
  int myindex = 0;
  void colorContainer(int index) {
    setState(() {
      myindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Transform(
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.001)
                ..rotateX(0.5)
                ..rotateY(0.3)
                ..rotateZ(-0.05),
              child: InkWell(
                onTap: () {
                  colorContainer((myindex + 1) % mycolorContainer.length);
                },
                child: Container(
                  color: mycolorContainer[myindex],
                  width: 150,
                  height: 100,
                  child: Center(child: Text("Skewed Box")),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

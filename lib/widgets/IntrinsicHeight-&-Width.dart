import 'package:flutter/material.dart';

class MyIntrinsicHeight extends StatelessWidget {
  const MyIntrinsicHeight({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("IntrinsicHeight Example")),
      body: Center(
        child: IntrinsicWidth(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                color: Colors.blue,
                height: 80,
                //  width: 100,
                child: const Text("Short Text"),
              ),
              Container(
                color: Colors.green,
                //  width: 100,
                height: 90,
                child: const Text(
                  "This is a longer text \n that takes more lines\nand more height",
                ),
              ),
              Container(
                color: Colors.orange,
                //  width: 100,
                child: const Text("Mid Text\n2 lines"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

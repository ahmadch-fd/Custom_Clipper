import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyVerticalDevider extends StatelessWidget {
  const MyVerticalDevider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Text('Hello Im FD'),
                VerticalDivider(
                  color: Colors.grey,
                  endIndent: 0.9,
                  indent: 0.9,
                  radius: BorderRadius.circular(20),
                  thickness: 0.9,
                  width: 10,
                ),
                Text('Im here to help you '),
                VerticalDivider(
                  color: Colors.grey,
                  endIndent: 0.9,
                  indent: 0.9,
                  radius: BorderRadius.circular(20),
                  thickness: 0.9,
                  width: 10,
                ),

                Expanded(
                  child: Text(
                    'Im here to help you ',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

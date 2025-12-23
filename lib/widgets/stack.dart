import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: Colors.amber,
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 90),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: const Color.fromARGB(255, 230, 27, 169),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 60),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: const Color.fromARGB(255, 53, 196, 151),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: const Color.fromARGB(255, 57, 250, 40),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: const Color.fromARGB(255, 137, 244, 250),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: const Color.fromARGB(255, 230, 97, 52),
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Container(
                    height: 300,
                    width: 290,
                    color: const Color.fromARGB(255, 230, 97, 52),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

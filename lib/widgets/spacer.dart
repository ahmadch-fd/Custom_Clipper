import 'package:flutter/material.dart';

class MySpacer extends StatelessWidget {
  const MySpacer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('im Ahmad'),
                Spacer(flex: 2),
                Text('3823989'),
                Spacer(flex: 10),
                Text('3823989'),
                Spacer(flex: 5),
                Text('3823989'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

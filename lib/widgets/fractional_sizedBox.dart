import 'package:flutter/material.dart';

class FractionalSizedbox extends StatelessWidget {
  const FractionalSizedbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amberAccent,
      child: FractionallySizedBox(
        alignment: Alignment.center,
        heightFactor: 0.7,
        widthFactor: 0.5,
        child: Container(
          color: Colors.pink,
          child: FractionallySizedBox(
            heightFactor: 0.7,
            widthFactor: 0.6,
            child: Container(
              color: Colors.amber,
              child: FractionallySizedBox(
                heightFactor: 0.7,
                widthFactor: 0.5,
                child: Container(
                  color: Colors.pink,
                  child: FractionallySizedBox(
                    heightFactor: 0.7,
                    widthFactor: 0.6,
                    child: Container(
                      color: Colors.amber,
                      child: FractionallySizedBox(
                        heightFactor: 0.7,
                        widthFactor: 0.6,
                        child: Container(
                          color: Colors.pink,
                          child: FractionallySizedBox(
                            heightFactor: 0.7,
                            widthFactor: 0.6,
                            child: Container(
                              color: Colors.amber,
                              child: FractionallySizedBox(
                                heightFactor: 0.7,
                                widthFactor: 0.6,
                                child: Container(
                                  color: Colors.pink,
                                  child: FractionallySizedBox(
                                    heightFactor: 0.7,
                                    widthFactor: 0.6,
                                    child: Container(
                                      color: Colors.amber,
                                      child: FractionallySizedBox(
                                        heightFactor: 0.7,
                                        widthFactor: 0.6,
                                        child: Container(
                                          color: Colors.pink,
                                          child: FractionallySizedBox(
                                            heightFactor: 0.7,
                                            widthFactor: 0.6,
                                            child: Container(
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

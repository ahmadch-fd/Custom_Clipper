import 'package:flutter/material.dart';
import 'package:widgets_practice/widgets/IntrinsicHeight-&-Width.dart';
import 'package:widgets_practice/widgets/aspect_ratio.dart';
import 'package:widgets_practice/widgets/baseLine.dart';
import 'package:widgets_practice/widgets/box_shadow.dart';
import 'package:widgets_practice/widgets/builder.dart';
import 'package:widgets_practice/widgets/clippers/clipOval.dart';
import 'package:widgets_practice/widgets/clippers/clipRRect.dart';
import 'package:widgets_practice/widgets/clippers/clip_path.dart';
import 'package:widgets_practice/widgets/clippers/custom_clippers.dart';
import 'package:widgets_practice/widgets/clippers/custom_paint.dart';
import 'package:widgets_practice/widgets/clippers_screen.dart';
import 'package:widgets_practice/widgets/colour_filtered.dart';
import 'package:widgets_practice/widgets/constrainedBox.dart'
    show MyConstrainedBox;
import 'package:widgets_practice/widgets/container.dart';
import 'package:widgets_practice/widgets/decoratedBox.dart';
import 'package:widgets_practice/widgets/direction.dart';
import 'package:widgets_practice/widgets/expanded.dart';
import 'package:widgets_practice/widgets/flexible&Align.dart';
import 'package:widgets_practice/widgets/fractional_sizedBox.dart';
import 'package:widgets_practice/widgets/layout_builder.dart';
import 'package:widgets_practice/widgets/opacity_&_animated_opacity.dart';
import 'package:widgets_practice/widgets/overFlowBox-limitedBox.dart';
import 'package:widgets_practice/widgets/placeholder.dart';
import 'package:widgets_practice/widgets/radial_gradient.dart';
import 'package:widgets_practice/widgets/rotated_box.dart';
import 'package:widgets_practice/widgets/shader_mask.dart';
import 'package:widgets_practice/widgets/shallow_effect.dart';
import 'package:widgets_practice/widgets/slivers.dart';
import 'package:widgets_practice/widgets/spacer.dart';
import 'package:widgets_practice/widgets/stack.dart';
import 'package:widgets_practice/widgets/text.dart';
import 'package:widgets_practice/widgets/transform.dart';
import 'package:widgets_practice/widgets/vertical_devider.dart';
import 'package:widgets_practice/widgets/wrap.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: MySlivers(),
    );
  }
}

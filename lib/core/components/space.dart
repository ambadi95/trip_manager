

import 'package:flutter/material.dart';

class Space extends StatelessWidget {
  final double height;
  final double width;
  const Space({super.key, this.height = 0, this.width = 0});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashLine extends StatelessWidget {
  final double height;
  final Color color;

  DashLine({this.height = 1, this.color = Colors.grey});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCont = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(
            dashCont,
            (index) {
              return SizedBox(
                width: dashWidth,
                height: dashHeight,
                child: DecoratedBox(
                  decoration: BoxDecoration(color: color),
                ),
              );
            },
          ),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

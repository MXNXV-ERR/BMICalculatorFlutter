import 'package:bmiclaculator/constants/appconst.dart';
import 'package:flutter/material.dart';

class leftbar extends StatelessWidget {
  final double barwidth;

  const leftbar({Key? key, required this.barwidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barwidth,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            color: acchex,
          ),
        )
      ],
    );
  }
}

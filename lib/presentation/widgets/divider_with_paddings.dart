import 'package:flutter/material.dart';

import '../../utils/constants.dart';

class DividerWithPadding extends StatelessWidget {
  final double padding;

  const DividerWithPadding({
    Key key,
    this.padding = 5,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: padding,
        ),
        const Divider(
          height: 1.5,
          color: greyColor,
        ),
        SizedBox(
          height: padding,
        ),
      ],
    );
  }
}

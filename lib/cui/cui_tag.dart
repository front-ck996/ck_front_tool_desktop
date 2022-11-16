
import 'package:flutter/material.dart';

class CuiTag extends StatelessWidget {
  List<Widget> children;
  CuiTag({required this.children,Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: children,
    );
  }
}

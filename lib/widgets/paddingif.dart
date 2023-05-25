import 'package:flutter/material.dart';

class PaddingIf extends StatelessWidget {
  final bool condition;
  final EdgeInsetsGeometry padding;
  final Widget child;

  const PaddingIf({
    Key? key,
    required this.condition,
    required this.padding,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return condition
        ? Padding(
            padding: padding,
            child: child,
          )
        : const SizedBox();
  }
}

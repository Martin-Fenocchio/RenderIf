import 'package:flutter/material.dart';

class ExpandedIf extends StatelessWidget {
  final bool condition;
  final Widget child;
  final int flex;

  const ExpandedIf(
      {super.key,
      required this.condition,
      required this.child,
      required this.flex});

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return Expanded(
        flex: flex,
        child: child,
      );
    }
    return const SizedBox();
  }
}

import 'package:flutter/material.dart';

class FlexibleIf extends StatelessWidget {
  final bool condition;
  final Widget child;
  final int flex;
  final FlexFit fit;

  const FlexibleIf({
    Key? key,
    required this.condition,
    required this.child,
    this.flex = 1,
    this.fit = FlexFit.loose,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (condition) {
      return Flexible(
        flex: flex,
        fit: fit,
        child: child,
      );
    }
    return const SizedBox();
  }
}

import 'package:flutter/material.dart';

class ContainerCuti extends StatelessWidget {
  final double height;
  final double width;
  final Color color;
  final Widget? child;

  const ContainerCuti({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      color: color,
      child: child,
    );
  }
}

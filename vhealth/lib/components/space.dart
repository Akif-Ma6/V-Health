import 'package:flutter/material.dart';

class HorizontalSpace extends StatelessWidget {
  const HorizontalSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 5,
    );
  }
}
class VerticalSpace extends StatelessWidget {
  const VerticalSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
     height:10,
    );
  }
}
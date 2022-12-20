import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  final String label;
  final String? value;
  final IconData icon;
  const IconText(
      {Key? key, required this.label, required this.value, required this.icon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 6),
        Text(value ?? "???"),
      ],
    );
  }
}

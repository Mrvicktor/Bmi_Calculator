import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  const IconContent({
    Key? key,
    required this.icon,
    required this.label,
  }) : super(key: key);
  final IconData icon;
  final String label;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.white,
          size: 80,
        ),
        SizedBox(height: 10),
        Text(
          label,
          style: TextStyle(fontSize: 20, color: Colors.grey),
        ),
      ],
    );
  }
}

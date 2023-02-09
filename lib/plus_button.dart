import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 75,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: Colors.grey[500]),
      child: const Center(
        child: Text(
          '+',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }
}

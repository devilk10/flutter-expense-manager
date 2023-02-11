import 'package:flutter/material.dart';

class PlusButton extends StatelessWidget {
  final function;
  const PlusButton({required this.function});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
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
      )
    );
  }
}

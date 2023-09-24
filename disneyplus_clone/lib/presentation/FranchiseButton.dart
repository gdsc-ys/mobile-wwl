import 'package:flutter/material.dart';

class FranchiseButton extends StatelessWidget {
  const FranchiseButton({
    super.key,
    required this.title,
    required this.image,
  });

  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child:
      Image.asset(
        image,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
import 'package:flutter/material.dart';

class SpecialistItem extends StatelessWidget {
  const SpecialistItem({
    super.key,
    required this.title,
    required this.image,
  });
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.2),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Row(
        children: [
          Image.network(
            image,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 8.0),
          Text(title),
        ],
      ),
    );
  }
}

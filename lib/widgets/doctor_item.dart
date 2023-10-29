import 'package:flutter/material.dart';

class DoctorItem extends StatelessWidget {
  final String image;
  final String name;
  final String specialist;
  const DoctorItem({
    super.key,
    required this.image,
    required this.name,
    required this.specialist,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(4),
      width: 130,
      decoration: BoxDecoration(
        color: Colors.green[50],
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12.0,
            ),
            CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(
                image,
              ),
            ),
            const SizedBox(height: 4.0),
            Container(
              decoration: const BoxDecoration(),
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Center(
                    child: Text(
                      specialist,
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green[300],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

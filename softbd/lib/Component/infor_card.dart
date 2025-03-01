import 'package:flutter/material.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    Key? key,
    required this.name,
    required this.imageAssetPath,
  }) : super(key: key);
  final String name;
  final String imageAssetPath;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 50,
        height: 100,
        child: Image.asset(
          imageAssetPath,
          color: Colors.white,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

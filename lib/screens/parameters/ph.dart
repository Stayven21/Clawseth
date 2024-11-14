import 'package:flutter/material.dart';

class DataContainer extends StatelessWidget {
  final Color color;
  final String imageUrl;
  final String label;
  final String value;

  const DataContainer({
    super.key,
    required this.color,
    required this.imageUrl,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      color: color,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Image.asset(imageUrl, height: 100, width: 100),
          SizedBox(height: 15),
          Text(label, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
          SizedBox(height: 15),
          Text(value,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white)),
        ],
      ),
    );
  }
}

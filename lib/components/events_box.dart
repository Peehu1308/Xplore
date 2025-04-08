import 'package:flutter/material.dart';

class Event_box extends StatelessWidget {
  final String name;
  final String image;
  final String description;

  const Event_box({
    Key ?key,
    required this.name,
    required this.image,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.42,
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child:Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              image,
              height:120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),  
          ),
          Padding(padding: const EdgeInsets.all(8),
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(padding: 
          const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ],
      )
    );
  }
}

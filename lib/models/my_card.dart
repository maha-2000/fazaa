import 'package:flutter/material.dart';

import '../constants.dart';

class MyCard extends StatelessWidget {
  final String name;
  final String phone;
  final String type;
  final String details;
  final Icon icon;
  final String status;

  const MyCard({
    super.key,
    required this.name,
    required this.phone,
    required this.type,
    required this.details,
    required this.icon,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Card(
        elevation: 10,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(top: 40,right: 16,left: 16,bottom: 16),
          child: Column(
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(phone,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(type,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(details,
                style: const TextStyle(
                  color: Colors.black54,
                ),
              ),
              Container(
                child: icon,
              ),
              Text(status),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: kPrimaryColor,
                ),
                onPressed: () {},
                child: const Text(
                  "More info",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
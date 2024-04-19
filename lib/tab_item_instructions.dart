import 'package:flutter/material.dart';

class TabItemInstructions extends StatelessWidget {
  final String title;
  final int count;

  const TabItemInstructions({
    super.key,
    required this.title,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
             title,
             style: const TextStyle(
               fontSize: 10,
             ),
             overflow:  TextOverflow.ellipsis,
           ),
          count > 0
           ? Container(
            margin: const EdgeInsetsDirectional.only(start: 5),
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                count > 9 ? "9+" : count.toString(),
                style: const TextStyle(
                  color: Colors.black54,
                  fontSize: 10,
                ),
              ),
            ),
          ) :
              const SizedBox(
                height: 0,
                width: 0,
              ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Task_Summary extends StatelessWidget {
  const Task_Summary({
    super.key,
    required this.number,
    required this.title,
  });

  final String number;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: [
            number !='null'
                ?
            Text(
              number ,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            )

                :  const CircularProgressIndicator(),
            Text('$title')
          ],
        ),
      ),
    );
  }
}

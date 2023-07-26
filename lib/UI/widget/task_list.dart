import 'package:flutter/material.dart';

class Task_list extends StatelessWidget {
  const Task_list({
    super.key, required this.colour, required this.status_name,
  });

  final  colour;
  final String status_name;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: ListTile(
        title: Text('Title '),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('this is subtitle'),
            Text('02/05/2023'),
            Row(
              children: [
                Chip(
                  label: SizedBox(
                    width: 80,

                    child: Center(
                      child: Text(
                        '$status_name',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  backgroundColor: colour,
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.edit),
                  color: Colors.blueAccent,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.delete_forever_outlined),
                  color: Colors.red,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
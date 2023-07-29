import 'package:flutter/material.dart';
import 'package:task_managment/UI/screens/auth/update_profile.dart';

import '../../data/model/auth_utility.dart';

class User_profile_banner extends StatelessWidget {
  const User_profile_banner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => update_profile()));
        },
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          leading: CircleAvatar(
            backgroundImage: NetworkImage(
              AuthUtlity.userInfo.data?.photo ??
                  'https://media.istockphoto.com/id/1270067126/photo/smiling-indian-man-looking-at-camera.jpg?s=612x612&w=0&k=20&c=ovIQ5GPurLd3mOUj82jB9v-bjGZ8updgy1ACaHMeEC0=',
            ),
            radius: 20,
            onBackgroundImageError: (_, __) {
              Icon(Icons.no_accounts);
            },
          ),
          title: Text(
            '${AuthUtlity.userInfo.data?.firstName} ${AuthUtlity.userInfo.data?.lastName}',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 14),
          ),
          subtitle: Text(
            '${AuthUtlity.userInfo.data?.email}',
            style: TextStyle(color: Colors.white, fontSize: 12),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class UserProfileBanner extends StatelessWidget {
  const UserProfileBanner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
      title: Text(
        "SR. Shuvo",
        style: TextStyle(color: Colors.white),
      ),
      subtitle: Text(
        "srs.bd420@gmail.com",
        style: TextStyle(color: Colors.white),
      ),
      tileColor: Colors.green,
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRogNsKkWsjuA03VHMJaVIbqx1fvCGJA3dXeExpbMF4BDbucentfNJX6pl56XNnm3iU4DY&usqp=CAU"),
      ),
    );
  }
}
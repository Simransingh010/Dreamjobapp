import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CircleAvatar(
          backgroundColor: Colors.yellow,
          radius: 50,
          child: Image.asset('asset/image/profile1.jpg'),
        ),
      ),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}

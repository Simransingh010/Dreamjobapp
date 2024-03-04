import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Container(
          // decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
          //   BoxShadow(color: Colors.grey[200]!, blurRadius: 5.0)
          // ]),
          child: Card(
            margin: EdgeInsets.only(left: 300),
            borderOnForeground: true,
            shadowColor: Colors.white,
            color: Colors.white,
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: SizedBox(
              width: 50,
              height: 50,
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications_on_outlined,
                    size: 30,
                    color: Colors.black,
                  )),
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xff49aaa0),
                child: CircleAvatar(
                  radius: 57,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundColor: Colors.yellow,
                    foregroundImage: AssetImage('asset/image/profile1.jpg'),
                    radius: 55,
                    // child: Image.asset('asset/image/profile1.jpg'),
                  ),
                ),
              ),
            ),
            Text(
              'Simranpreet Singh',
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}

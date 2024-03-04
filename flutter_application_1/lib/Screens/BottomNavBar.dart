import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/BookmarkPage.dart';
import 'package:flutter_application_1/Screens/Homepage.dart';
import 'package:flutter_application_1/Screens/MessagePage.dart';
import 'package:flutter_application_1/Screens/ProfilePage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _index = 0;
  List pages = [
    HomePage(),
    MessagePage(),
    BookmarkPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: pages.elementAt(_index),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
          // BoxShadow(
          //   color: Colors.grey,
          //   spreadRadius: 0,
          //   blurRadius: 20,
          // )
        ]),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 20, left: 10, right: 10),
          child: Container(
            height: 70,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                blurRadius: 18,
                spreadRadius: 0,
                color: Colors.grey,
              )
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              child: Container(
                decoration: BoxDecoration(color: Colors.yellow, boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0100,
                    spreadRadius: 100,
                  )
                ]),
                child: BottomNavigationBar(
                    currentIndex: _index,
                    selectedLabelStyle: TextStyle(
                      fontSize: 5,
                      color: const Color.fromARGB(255, 122, 193, 185),
                    ),
                    unselectedLabelStyle: TextStyle(
                      fontSize: 5,
                      color: Colors.blue[200],
                    ),
                    selectedItemColor: Color.fromARGB(255, 122, 193, 185),
                    unselectedItemColor: Colors.blue[200],
                    onTap: (index) {
                      setState(() {
                        _index = index;
                        print(
                          '$index',
                        );
                      });
                    },
                    type: BottomNavigationBarType.fixed,
                    items: <BottomNavigationBarItem>[
                      BottomNavigationBarItem(
                        activeIcon: Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                          ),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.home_filled,
                                size: 32,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text('Home'),
                              )
                            ],
                          ),
                        ),
                        icon: Icon(
                          Icons.home_outlined,
                          size: 27,
                        ),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                          activeIcon: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.message,
                                size: 32,
                              ),
                              Text(' Messages'),
                            ],
                          ),
                          icon: Icon(
                            Icons.message_outlined,
                            size: 27,
                          ),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.bookmark_add,
                                size: 30,
                              ),
                              Text(
                                'Bookmarks',
                              )
                            ],
                          ),
                          icon: Icon(
                            Icons.bookmark_add_outlined,
                            size: 27,
                          ),
                          label: ''),
                      BottomNavigationBarItem(
                          activeIcon: Row(
                            // mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.person,
                                size: 32,
                              ),
                              Text('Profile')
                            ],
                          ),
                          icon: Icon(
                            Icons.person_2_outlined,
                            size: 27,
                          ),
                          label: ''),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

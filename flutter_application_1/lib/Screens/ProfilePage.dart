// import 'package:charts_flutter/flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/LineChart.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 60,
        title: Card(
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
      body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundColor: const Color(0xff49aaa0),
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
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.w600),

                  // TextStyle(fontSize: 30),
                ),
                Text(
                  'UX/UI Designer',
                  style: GoogleFonts.lato(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'My Resume',
              style: GoogleFonts.lato(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
          ),
          Container(
            // color: Colors.black,
            margin: EdgeInsets.only(left: 15, right: 5),
            height: 190,
            width: 700,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 5,
                  // margin: EdgeInsets.only(left: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                    ),
                    height: 140,
                    width: MediaQuery.of(context).size.width * 0.726,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 10,
                            right: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Senior UX/UI Designer',
                                style: GoogleFonts.lato(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.black),
                              ),
                              IconButton(
                                iconSize: 23,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.edit,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            '>100k/Year',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12),
                          child: Text(
                            'San Francisco',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 15, left: 10),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Full-Time',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.grey,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 50),
                                child: Text(
                                  'Remote',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  // color: Colors.pink,
                  height: 150,
                  width: 90,
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 65,
                          width: 70,
                          child: IconButton(
                              iconSize: 30,
                              onPressed: () {},
                              icon: Icon(
                                Icons.add,
                                size: 36,
                              )),
                        ),
                      ),
                      Card(
                        elevation: 10,
                        shadowColor: Colors.grey,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xff49AAA0),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          height: 65,
                          width: 70,
                          child: IconButton(
                            iconSize: 30,
                            onPressed: () {},
                            icon: Icon(
                              Icons.video_collection_rounded,
                              color: Colors.white,
                              size: 36,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 10,
            ),
            child: Text(
              "My Stats",
              style: GoogleFonts.lato(
                fontSize: 25,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            width: MediaQuery.of(context).size.width * 1,
            height: MediaQuery.of(context).size.height * 0.28,
            child: Card(
              elevation: 6,
              shadowColor: Colors.grey,
              borderOnForeground: false,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                height: 180,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Views',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Check details',
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.grey,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text.rich(TextSpan(children: [
                        TextSpan(
                          text: '+37',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                        ),
                        TextSpan(
                          text: ' from Last Week',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 17,
                            color: Colors.grey,
                          ),
                        ),
                      ])),
                    ),
                    LineChartWidget(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          IconButton(
                            iconSize: 1,
                            onPressed: () {},
                            icon: Image.asset(
                              'asset/image/snapchat.png',
                              cacheHeight: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                          IconButton(
                            // iconSize: 10,
                            onPressed: () {},
                            icon: Image.asset(
                              'asset/image/youtube.png',
                              cacheHeight: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                          IconButton(
                            iconSize: 1,
                            onPressed: () {},
                            icon: Image.asset(
                              'asset/image/linkedin.png',
                              cacheHeight: 32,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            '+5',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

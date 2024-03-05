import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        title: Card(
          margin: const EdgeInsets.only(left: 300),
          borderOnForeground: true,
          shadowColor: Colors.white,
          color: const Color(0xffffffff),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 10,
              left: 10,
            ),
            child: Text(
              'Find Your Dream Job!',
              style: GoogleFonts.lato(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Row(
            children: [
              Card(
                elevation: 1,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: MediaQuery.of(context).size.height * 0.064,
                  child: TextField(
                    maxLength: null,
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      color: Colors.black,
                    ),
                    // keyboardType: TextInputType.emailAddress,
                    obscureText: false,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 5),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 35,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,

                      // border: OutlineInputBorder(
                      //     borderRadius: BorderRadius.circular(30)),
                      hintText: 'Search',
                      hintStyle: GoogleFonts.lato(fontSize: 20),
                    ),
                  ),
                  // leading: Icon(Icons.search),
                  // backgroundColor: ,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

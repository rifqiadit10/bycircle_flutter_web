import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    Widget navItem({String title, int index}) {
      return InkWell(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 18,
                color: Color(0xff1D1E3C),
                fontWeight:
                    index == selectedIndex ? FontWeight.w500 : FontWeight.w300,
              ),
            ),
            Container(
              width: 66,
              height: 2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: index == selectedIndex
                    ? Color(0xffFE99BD)
                    : Colors.transparent,
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xffF0FCFF), Color(0xffFFF8F9)]),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 100,
            vertical: 40,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // NAVIGATION

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'logo.png',
                    height: 40,
                    width: 72,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      navItem(title: 'Guides', index: 0),
                      SizedBox(
                        width: 60,
                      ),
                      navItem(title: 'Pricing', index: 1),
                      SizedBox(
                        width: 60,
                      ),
                      navItem(title: 'Team', index: 2),
                      SizedBox(
                        width: 60,
                      ),
                      navItem(title: 'Stories', index: 3),
                    ],
                  ),
                  Image.asset(
                    'btn.png',
                    height: 53,
                    width: 163,
                  )
                ],
              ),

              // MAIN CONTENT

              Image.asset(
                "bycircle.png",
                width: 763,
                height: 550,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("icon_down_solid.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      'Scroll to Learn More',
                      style: GoogleFonts.poppins(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

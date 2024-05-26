import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:myapp/pages/secondpage.dart';


class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 35,
    fontWeight: FontWeight.w600,
    // backgroundColor: Colors.black,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Text(
          'Harmanjeet Singh',
          style: TextStyle(
            height: 1.2,
            fontSize: 42,
            fontWeight: FontWeight.w600,
            backgroundColor: Colors.black,
            color: Color(0xffB9B0A7),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 10),
          child: Image(
            image: AssetImage('assets/images/h1.jpeg'),
            width: double.infinity,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            'Creative App Developer, Interactive Designer, Creative Developer, Based in India',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w700,
              // backgroundColor: Colors.black
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    ),
    Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Text(
          'Skills',
          style: TextStyle(
            height: 1.2,
            letterSpacing: 1,
            fontSize: 42,
            fontWeight: FontWeight.w600,
            // backgroundColor: Colors.black,
            // color: Color(0xffB9B0A7),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 10),
          child: Image(
            image: AssetImage('assets/images/h2.jpg'),
            width: double.infinity,
            // height: 400,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Text(
            "MERN Stack (MongoDB, Express, React, and Node. js), Dart (Flutter) ",
            style: optionStyle,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ),
    Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 10),
        Text(
          'Contact Links',
          style: TextStyle(
            height: 1.2,
            fontSize: 42,
            letterSpacing: 2.2,
            fontWeight: FontWeight.w600,
            backgroundColor: Colors.black,
            color: Color(0xffB9B0A7),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 18, right: 18, bottom: 5, top: 10),
          child: Image(
            image: AssetImage('assets/images/h3.jpg'),
            width: double.infinity,
          ),
        ),
        Padding(
            padding: EdgeInsets.only(left: 45, right: 45),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    SizedBox(width: 10),
                    Text("+91 9041860924",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          height: 2.2,
                        )),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.email,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 10,
                        )
                      ],
                    ),
                    SizedBox(width: 10),
                    Text("hxrman.codes@gmail.com",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                        )),
                  ],
                )
              ],
            )),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffB9B0A7),
        elevation: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SecondRoute()),);
              },
              child: Icon(
              LineIcons.infoCircle,
              size: 30,
              color: Colors.black,
              shadows: [
                Shadow(
                  color: Colors.black,
                  blurRadius: 10,
                )
              ],
                      ),
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffB9B0A7),
      body: SingleChildScrollView(
        child: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: Container(
        color: const Color(0xffB9B0A7),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              backgroundColor: const Color(0xffB9B0A7),
              activeColor: Colors.black,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.white,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  text: 'About',
                ),
                GButton(
                  icon: LineIcons.language,
                  text: 'Skills',
                ),
                GButton(
                  icon: LineIcons.slideshare,
                  text: 'Contact',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}

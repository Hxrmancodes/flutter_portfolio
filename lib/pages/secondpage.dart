import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});


  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color(0xffB9B0A7),
        elevation: 10,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          const Text(
            'Harmanjeet Singh',
            style: TextStyle(
              height: 1.2,
              fontSize: 42,
              fontWeight: FontWeight.w600,
              color: Color(0xffB9B0A7),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, right: 20, bottom: 5, top: 10),
            child: CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/hm.jpeg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => _launchURLBrowser,
                  child: const Icon(
                    LineIcons.github,
                    color: Color(0xffB9B0A7),
                    size: 80,
                  ),
                ),
                const SizedBox(width: 20),
                GestureDetector(
                    onTap: 
                    () => launchUrl(
                      Uri.parse('https://github.com/Hxrmancodes'),),
                  child: const Icon(
                    LineIcons.linkedin,
                    color: Color(0xffB9B0A7),
                    size: 80,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
   _launchURLBrowser() async {
  var url = Uri.parse("https://www.geeksforgeeks.org/");
  if (await canLaunchUrl(url)) {
    await launchUrl(url);
  } else {
    throw 'Could not launch $url';
  }
}
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mymateapp/MyMateThemes.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bottom_navigation_bar.dart';

class FrontPage extends StatefulWidget {
  const FrontPage({super.key});

  @override
  State<FrontPage> createState() => _FrontPageState();
}

class _FrontPageState extends State<FrontPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyMateThemes.backgroundWhite,
      appBar: AppBar(
        backgroundColor: MyMateThemes.backgroundWhite,
        title: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(
              //   width: 10,
              // ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Hello,',
                    style: TextStyle(
                      color: MyMateThemes.primaryGreen,
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Your Name',
                    style: TextStyle(
                      color: MyMateThemes.textGreen,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.question_mark_rounded),
            onPressed: () {
              // Handle icon tap
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Text(
                'Congratulations',
                style: TextStyle(
                  color: MyMateThemes.primaryGreen,
                  fontSize: MyMateThemes.subHeadFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: Text(
                'You are successfully registered',
                style: TextStyle(
                  color: MyMateThemes.textGreen,
                  fontSize: MyMateThemes.nomalFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Center(
              child: SvgPicture.asset(
                'assets/images/Group 2073.svg',
                // Replace this with your SVG icon path
                width: 230, // Adjust the width as needed
                height: 195, // Adjust the height as needed
                //color: MyMateThemes
                //  .primaryGreen, // Use the desired color for the icon
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'View Matches',
                style: TextStyle(
                  color: MyMateThemes.primaryGreen,
                  fontSize: MyMateThemes.subHeadFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Free',
                  style: TextStyle(
                    color: MyMateThemes.textGreen,
                    fontSize: MyMateThemes.nomalFontSize,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        'assets/images/Layer 1.svg',
                        // Replace this with your SVG icon path
                        width: 18.29, // Adjust the width as needed
                        height: 18.29, // Adjust the height as needed
                        // color: MyMateThemes
                        //     .primaryGreen, // Use the desired color for the icon
                      ),
                      SizedBox(width: 4),
                      Text(
                        'Premium',
                        style: TextStyle(
                          color: MyMateThemes.primaryGreen,
                          fontSize: MyMateThemes.nomalFontSize,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 7),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 164,
                  height: 188,
                  color: MyMateThemes.containerViolet,
                  alignment: Alignment.bottomLeft,
                ),
                Container(
                  width: 164,
                  height: 188,
                  color: MyMateThemes.secondaryGreen,
                  alignment: Alignment.bottomRight,
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () {
                    // Handle link tap action
                    print('Link tapped');
                  },
                  child: Text(
                    'Complete Profile',
                    style: TextStyle(
                      color: MyMateThemes.primaryGreen,
                      fontSize: MyMateThemes.nomalFontSize,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  width: 164.0,
                  height: 58.0,
                  child: OutlinedButton(
                    onPressed: () {
                      // Handle button press action
                      print('Button pressed');
                    },
                    style: const ButtonStyle(
                      foregroundColor: MaterialStatePropertyAll(Colors.white),
                      backgroundColor:
                          MaterialStatePropertyAll(MyMateThemes.primaryGreen),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero)),
                    ),
                    // OutlinedButton.styleFrom(
                    //     backgroundColor: MyMateThemes.primaryGreen,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(
                    //           10), // Adjust the border radius as needed
                    //     ),
                    //     alignment: Alignment.center),
                    child: Text(
                      'Subscribe',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: MyMateThemes.buttonFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedIndex: _selectedIndex,
        onItemTapped: (index) {
          setState(() {
            _selectedIndex = index;
          });
          // Handle navigation here based on the index
        },
      ),
    );
  }
}

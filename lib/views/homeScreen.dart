import 'package:bitching/utils/privcyColors.dart';
import 'package:circle_nav_bar/circle_nav_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
        title: Text(
          """Hey 👋,
Raza
          """,
          style: GoogleFonts.raleway(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 0.8,
        width: MediaQuery.of(context).size.width * 1,
        child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              child: CircleAvatar(
                                child: Text(
                                  "#",
                                  style: GoogleFonts.raleway(
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                backgroundColor: Colors.white,
                                radius: 25,
                              ),
                              backgroundColor: PrivcyColors.mainAppColor,
                              radius: 27,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "hemnat",
                              style: GoogleFonts.raleway(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Divider()
                      ],
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.4,
                  width: MediaQuery.of(context).size.width * 1,
                ),
              );
            }),
      ),
      bottomNavigationBar: CircleNavBar(
        activeIcons: [
          Icon(
            EvaIcons.homeOutline,
            color: PrivcyColors.mainAppColor,
          ),
          Image.asset(
            "assets/privcyLogo.png",
            scale: 12,
          ),
          Icon(
            Icons.group_outlined,
            color: PrivcyColors.mainAppColor,
          ),
        ],
        inactiveIcons: [
          Text(
            "Home",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            "Privcy",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            "Groups",
            style: GoogleFonts.raleway(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ],
        color: Colors.white,
        height: 60,
        circleWidth: 60,
        initIndex: 1,
        onChanged: (v) {
          // TODO
        },
        // tabCurve: ,
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
        cornerRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(24),
          bottomLeft: Radius.circular(24),
        ),
        shadowColor: PrivcyColors.mainAppColor,
        elevation: 10,
      ),
    );
  }
}

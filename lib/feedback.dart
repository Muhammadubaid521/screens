import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import 'pages/feedback_page.dart';

class FeedBack extends StatefulWidget {
  const FeedBack({super.key});

  @override
  State<FeedBack> createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_back_ios)),
                    ),
                    const Expanded(
                      child: SizedBox(
                        width: 33,
                      ),
                    ),
                    Text(
                      'Feedback Management',
                      style: GoogleFonts.montserrat(
                          color: const Color(0xff000000),
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                    const Expanded(
                      child: SizedBox(
                        width: 33,
                      ),
                    ),
                    const Icon(Icons.notifications),
                  ],
                ),
                const SizedBox(
                  height: 27,
                ),
                Text(
                  'Add Suggestion:',
                  style: GoogleFonts.montserrat(
                      color: const Color(0xff000000),
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffEDEDED),
                          width: 0,
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffEDEDED),
                          width: 0,
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffEDEDED),
                          width: 2,
                        ),
                      ),
                      hintText: 'Feedback Description',
                      hintStyle: GoogleFonts.montserrat(
                        color: Colors.black,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      )),
                  keyboardType: TextInputType.multiline,
                  minLines: 1,
                  maxLines: 5,
                ),
                const SizedBox(
                  height: 23,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                        width: 143,
                        height: 40,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.531),
                                side: const BorderSide(color: Colors.red),
                              ),
                            ),
                            onPressed: () {},
                            child: Text(
                              'Cancel',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 12.59,
                                  fontWeight: FontWeight.w500),
                            ))),
                    const SizedBox(
                      width: 11.58,
                    ),
                    SizedBox(
                      width: 143,
                      height: 40,
                      child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.531),
                              side: const BorderSide(color: Colors.amber),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const FeedBackPage(),
                                ));
                          },
                          child: Text(
                            'Submit',
                            style: GoogleFonts.montserrat(
                                color: Colors.white,
                                fontSize: 12.59,
                                fontWeight: FontWeight.w500),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 288.28,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: const Padding(
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: GNav(
              backgroundColor: Colors.white,
              color: Color(0xff878787),
              activeColor: Color(0xffFEBD11),
              gap: 4,
              padding: EdgeInsets.all(16),
              tabBackgroundColor: Color(0xffF5F5FF),
              tabs: [
                GButton(
                  icon: Icons.home,
                  iconSize: 24,
                  textSize: 12,
                  text: "Home",
                ),
                GButton(
                  icon: Icons.calendar_month,
                  text: "Date",
                ),
                GButton(
                  icon: Icons.bookmark,
                  text: "Task",
                ),
                GButton(
                  icon: Icons.person,
                  text: "Profile",
                ),
              ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:velocity_x/velocity_x.dart';

class FeedBackPageThree extends StatefulWidget {
  const FeedBackPageThree({super.key});

  @override
  State<FeedBackPageThree> createState() => _FeedBackPageThreeState();
}

class _FeedBackPageThreeState extends State<FeedBackPageThree> {
  var navbaritem = [
    const BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const BottomNavigationBarItem(
      icon: Icon(Icons.calendar_month),
      label: "calender",
    ),
    const BottomNavigationBarItem(icon: Icon(Icons.note_add), label: "cart"),
    const BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    20.heightBox,
                    IconButton.outlined(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back_ios)),
                    Text(
                      "Feedback Management",
                      style: GoogleFonts.montserrat(
                          fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton.filled(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications),
                      highlightColor: Colors.amber,
                    )
                  ],
                ),
                50.heightBox,
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.44),
                              color: Colors.white),
                          height: 84,
                          width: 152,
                          child: Column(
                            children: [
                              Text(
                                "131",
                                style: GoogleFonts.montserrat(
                                  color: Colors.blue,
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "complaints",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.44),
                              color: Colors.white),
                          height: 84,
                          width: 152,
                          child: Column(
                            children: [
                              Text(
                                "11",
                                style: GoogleFonts.montserrat(
                                  color: Color(0xffff0202),
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "In Progress",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.44),
                              color: Colors.white),
                          height: 84,
                          width: 152,
                          child: Column(
                            children: [
                              Text(
                                "120",
                                style: GoogleFonts.montserrat(
                                  color: Colors.yellow,
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Resolved",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(9.44),
                              color: Colors.white),
                          height: 84,
                          width: 152,
                          child: Column(
                            children: [
                              Text(
                                "0",
                                style: GoogleFonts.montserrat(
                                  color: const Color(0xff4B0606),
                                  fontSize: 34.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Un Resolved",
                                style: GoogleFonts.montserrat(
                                  color: Colors.black,
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                61.65.heightBox,
                Container(
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
                      ColumnSeries<Data, String>(
                        dataSource: <Data>[
                          Data('Jan', 30, 20),
                          Data('Feb', 50, 50),
                          Data('Mar', 20, 25),
                          Data('Apr', 50, 25),
                          Data('May', 30, 25),
                          Data('Jun', 10, 25),
                          Data('Jul', 40, 25),
                          Data('Aug', 40, 25),
                          Data('Sep', 40, 25),
                          Data('oct', 40, 25),
                          Data('Nov', 40, 25),
                          Data('Dec', 40, 25),
                        ],
                        xValueMapper: (Data data, _) => data.month,
                        yValueMapper: (Data data, _) => data.completion,
                        color: Color(0xffF94144),
                        name: 'Completion',
                      ),
                      ColumnSeries<Data, String>(
                        dataSource: <Data>[
                          Data('Jan', 30, 20),
                          Data('Feb', 40, 25),
                          Data('Mar', 10, 10),
                          Data('Apr', 40, 50),
                          Data('May', 20, 25),
                          Data('Jun', 4, 2),
                          Data('Jul', 40, 25),
                          Data('Aug', 40, 25),
                          Data('Sep', 40, 25),
                          Data('oct', 40, 25),
                          Data('Nov', 40, 25),
                          Data('Dec', 40, 25),
                        ],
                        xValueMapper: (Data data, _) => data.month,
                        yValueMapper: (Data data, _) => data.progress,
                        color: Color(0xff90BE6D),
                        name: 'Progress',
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ""
                        .text
                        .color(Color(0xffF94144))
                        .make()
                        .box
                        .width(13)
                        .height(12)
                        .color(Color(0xffF94144))
                        .make(),
                    7.widthBox,
                    "Completed"
                        .text
                        .color(Colors.black)
                        .size(9.649)
                        .fontWeight(FontWeight.w500)
                        .make(),
                    29.widthBox,
                    ""
                        .text
                        .color(Color(0xff90BE6D))
                        .make()
                        .box
                        .width(13)
                        .height(12)
                        .color(Color(0xff90BE6D))
                        .make(),
                    7.widthBox,
                    "In Progress"
                        .text
                        .color(Colors.black)
                        .size(9.649)
                        .fontWeight(FontWeight.w500)
                        .make(),
                  ],
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.amber,
          unselectedItemColor: Colors.black,
          items: navbaritem,
        ),
      ),
    );
  }
}

class Data {
  final String month;
  final double completion;
  final double progress;

  Data(this.month, this.completion, this.progress);
}

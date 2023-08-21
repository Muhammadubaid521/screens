import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GeeksForGeeks"),
        backgroundColor: Colors.green,
      ),
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed: () {
              showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                  title: const Text("Alert Dialog Box"),
                  content: const Text("You have raised a Alert Dialog Box"),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(ctx).pop();
                      },
                      child: Container(
                        color: Colors.green,
                        padding: const EdgeInsets.all(14),
                        child: const Text("okay"),
                      ),
                    ),
                  ],
                ),
              );
            },
            child: const Text("Show alert Dialog box"),
          ),

// RaidedButton is deprecated and should not be used
// Instead use ElevatedButton

          // child: RaisedButton(
          // onPressed: () {
          //	 showDialog(
          //	 context: context,
          //	 builder: (ctx) => AlertDialog(
          //		 title: const Text("Alert Dialog Box"),
          //		 content: const Text("You have raised a Alert Dialog Box"),
          //		 actions: <Widget>[

          // FlatButton is deprecated and should not be used
          // Instead use TextButton

          //		 FlatButton(
          //			 onPressed: () {
          //			 Navigator.of(ctx).pop();
          //			 },
          //			 child: const Text("okay"),
          //		 ),
          //		 ],
          //	 ),
          //	 );
          // },
          // child: const Text("Show alert Dialog box"),
          // ),
        ),
      ),
    );
  }
}

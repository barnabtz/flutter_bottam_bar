import 'package:bottom_nav_bar/models/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

enum BottomIcons { Home, Store, Add, Explore, Person }

class _HomePageState extends State<HomePage> {
  BottomIcons bottomIcons = BottomIcons.Home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          bottomIcons == BottomIcons.Home
              ? Center(
                  child: Text(
                    'Hi, this the Home Page',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Store
              ? Center(
                  child: Text(
                    'Hi, this the Store Page',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Add
              ? Center(
                  child: Text(
                    'Hi, this the Add Page',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Explore
              ? Center(
                  child: Text(
                    'Hi, this the Explore',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          bottomIcons == BottomIcons.Person
              ? Center(
                  child: Text(
                    'Hi, this the Profile',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              : Container(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: EdgeInsets.only(bottom: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Home;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Home ? true : false,
                      text: "Home",
                      icons: Icons.home),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Store;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Store ? true : false,
                      text: "Store",
                      icons: Icons.store),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Add;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Add ? true : false,
                      text: null,
                      icons: Icons.add),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Explore;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Explore ? true : false,
                      text: "Explore",
                      icons: Icons.explore),
                  BottomBar(
                      onPressed: () {
                        setState(() {
                          bottomIcons = BottomIcons.Person;
                        });
                      },
                      bottomIcons:
                          bottomIcons == BottomIcons.Person ? true : false,
                      text: "Profile",
                      icons: Icons.person),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

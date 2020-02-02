import 'dart:ui';

import 'package:animation/screens/details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/bulb.png"),
              color: Color(0xFF3A5A98),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/Iconfeatherhome.png"),
              color: Color(0xFF3A5A98),
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage("images/Iconfeather-settings.png"),
              color: Color(0xFF3A5A98),
            ),
            title: Text('Home'),
          )
        ],
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: LayoutBuilder(builder:
              (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Container(
                  color: Color(0xff006064),
                  child: Container(
                    child: IntrinsicHeight(
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.35,
                              width: MediaQuery.of(context).size.width,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: <Widget>[
                                      Expanded(
                                        child: Container(
                                           padding: EdgeInsets.all(10.0),
                                          color: Color(0xff006064),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                            top: 100.0,
                                            left: 30.0,
                                            bottom: 50.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Control \n panel',
                                              style: TextStyle(
                                                  fontSize: 30.0,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Image(
                                              image: AssetImage(
                                                'images/user.png',
                                              ),
                                              fit: BoxFit.cover,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                          
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(56.0),
                                  topRight: Radius.circular(56.0),
                                ),
                              ),
                              child: Container(
                               
                                height: 50.0,
                                width: double.infinity,
                                child: GridView.count(
                                  crossAxisCount: 2,
                                  padding: EdgeInsets.all(20),
                                  crossAxisSpacing: 20,
                                  mainAxisSpacing: 20,
                                  children: <Widget>[
                                    _bulidCard('bedroom', '4 lights',
                                        'images/bed.png', context),
                                    _bulidCard('balcony', '4 lights',
                                        'images/balcony.png', context),
                                    _bulidCard('LivingRoom', '4 lights',
                                        'images/room.png', context),
                                    _bulidCard('kitchen', '4 lights',
                                        'images/kitchen.png', context),
                                    _bulidCard('Bathroom', '4 lights',
                                        'images/bathtube.png', context),
                                    _bulidCard('Outdoor', '4 lights',
                                        'images/house.png', context),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  Widget _bulidCard(String name, String lights, String imagepath, context) {
    return Padding(
      padding: EdgeInsets.only(top: 15.0, left: 5.0, right: 5.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailsPage()));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Hero(
                tag: imagepath,
                child: Container(
                  height: 75.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagepath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.0),
              Text(
                name,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
              Text(
                lights,
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

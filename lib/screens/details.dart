import 'package:animation/shared/raisedbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

class DetailsPage extends StatefulWidget {
  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  RangeValues values = RangeValues(1, 100);

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
      body: ListView(
        children: [
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 20.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff006064),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 20.0),
                      child: Text(
                        'Bed \n Room',
                        style: TextStyle(
                            fontSize: 30.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 20.0),
                      child: Text(
                        ' 4 Lights',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.yellow,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50.0,
                            width: 150.0,
                            child: normalbutton(
                              Colors.greenAccent,
                              'MainLight',
                              Colors.white70,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 50.0,
                            width: 150.0,
                            child: normalbutton(
                              Color(0xffC8E6C9),
                              'Desk',
                              Color(0xff4CAF50),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.35,
                child: Container(
                  height: MediaQuery.of(context).size.height - 20.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(40.0),
                      topLeft: Radius.circular(40.0),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          'Itensity',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      RangeSlider(
                          min: 1,
                          max: 100,
                          values: values,
                          onChanged: (value) {
                            setState(() {
                              values = value;
                            });
                          }),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          'Colors',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 50.0,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              circularButton(
                                Colors.red,
                              ),
                              circularButton(
                                Colors.green,
                              ),
                              circularButton(
                                Colors.blue,
                              ),
                              circularButton(
                                Colors.pink,
                              ),
                              circularButton(
                                Colors.yellow,
                              ),
                              circularButton(
                                Colors.orange,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text(
                          'Screens',
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.blueAccent,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50.0,
                              width: 150.0,
                              child: normalbutton(
                                Color(0xffFF7043),
                                'Birthday',
                                Color(0xffFFAB91),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50.0,
                              width: 150.0,
                              child: normalbutton(
                                Color(0xff7E57C2),
                                'Party',
                                Color(0xffB39DDB),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50.0,
                              width: 150.0,
                              child: normalbutton(
                                Color(0xff81D4FA),
                                'Relex',
                                Color(0xff03A9F4),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              height: 50.0,
                              width: 150.0,
                              child: normalbutton(
                                Color(0xffC8E6C9),
                                'Fun',
                                Color(0xff4CAF50),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget listofcolor(Color colors) {
    return Padding(
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        children: <Widget>[
          Container(
            height: 50.0,
            width: 50.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), color: colors),
          ),
        ],
      ),
    );
  }

  Widget circularButton(Color colors) {
    return Center(
      child: FloatingActionButton(
        backgroundColor: colors,
        elevation: 0,
        onPressed: () => {},
      ),
    );
  }

  Widget normalbutton(Color primarycolors, String text, Color secondarycolors) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 300,
        height: 100,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              primarycolors,
              secondarycolors,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(5, 5),
              blurRadius: 10,
            )
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

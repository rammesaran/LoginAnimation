import 'package:animation/screens/registration.dart';
import 'package:animation/screens/splashscreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _text = TextEditingController();
  final _password = TextEditingController();
  bool _validate = false;
  @override
  Widget build(BuildContext context) {
    final forgotpassword = Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Don\'t have an account ?',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.w900),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Registration()));
            },
            child: Text(
              'SIGN UP',
              style: TextStyle(
                  color: Color(0xff0097A7),
                  fontSize: 20,
                  fontWeight: FontWeight.w900),
            ),
          )
        ],
      ),
    );
    final username = Form(
   
      child: TextFormField(
        controller: _text,
      
      style: TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
         errorText: _validate ? 'Please enter UserName' : null,
        prefixIcon: Icon(Icons.account_circle),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Username',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    ),
    );
    
    
    final password = TextField(
      controller: _password,
      obscureText: true,
      style: TextStyle(
        fontSize: 20.0,
      ),
      decoration: InputDecoration(
         errorText: _validate ? 'Please enter Password' : null,
        prefixIcon: Icon(Icons.lock),
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: 'Password',
        
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
      ),
    );

    final loginbutton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.horizontal(),
      color: Color(0xff0097A7),
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(20.0),
        onPressed: () {
setState(() {
                  _text.text.isEmpty ? _validate = true : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SplashScreen()));
                  _password.text.isEmpty ? _validate = true :
                  _text.text.isEmpty ? _validate = true : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SplashScreen()));
                });
 
        },
        child: Text(
          "SIGN IN",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );

    return Scaffold(
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
                          Container(
                            height: MediaQuery.of(context).size.height * 0.35,
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Expanded(
                                      child: Container(
                                        child: Image(
                                          image: AssetImage(
                                            'images/MaskGroup_2.png',
                                          ),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Text(
                                        
                                        "Welcome\n to Room Control",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontStyle: FontStyle.normal),
                                      
                                      ),
                                    )
                                  ],
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
                                      topRight: Radius.circular(56.0))),
                              child: Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    SizedBox(height: 20.0),
                                    username,
                                    SizedBox(height: 20.0),
                                    password,
                                    SizedBox(
                                      height: 24.0,
                                    ),
                                    loginbutton,
                                    SizedBox(
                                      height: 24.0,
                                    ),
                                    forgotpassword,
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
}

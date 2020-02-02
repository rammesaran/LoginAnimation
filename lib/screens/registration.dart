import 'package:animation/screens/login.dart';
import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool monVal = false;
  final _text = TextEditingController();
  final _password = TextEditingController();
  final _email = TextEditingController();
  bool _validate = false;

  @override
  Widget build(BuildContext context) {
    final emailField = TextField(
      controller: _text,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          errorText: _validate ? 'Please enter UserName' : null,
          prefixIcon: Icon(Icons.account_circle),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "UserName",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16.0))),
    );

    final passwordField = TextField(
      controller: _password,
      obscureText: true,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          errorText: _validate ? 'Please enter Password' : null,
          prefixIcon: Icon(Icons.lock),
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          hintText: "Password",
          border:
              OutlineInputBorder(borderRadius: BorderRadius.circular(16.0))),
    );
    final email = TextField(
      controller: _email,
      obscureText: false,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.email),
        errorText: _validate ? 'Please enter Email' : null,
        contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        hintText: "Email",
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
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
                  MaterialPageRoute(builder: (context) => HomePage()));
            _password.text.isEmpty ? _validate = true : Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
            _email.text.isEmpty ? _validate = true :  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePage()));
          });
        },
        child: Text(
          "SIGN UP",
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
                                            'images/MaskGroup_1.png',
                                          ),
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Text(
                                        "Create New Account",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontStyle: FontStyle.normal),
                                        textAlign: TextAlign.start,
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
                                      SizedBox(height: 48.0),
                                      emailField,
                                      SizedBox(height: 24.0),
                                      passwordField,
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      email,
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Checkbox(
                                                value: monVal,
                                                onChanged: (bool value) {
                                                  setState(() {
                                                    monVal = value;
                                                  });
                                                }),
                                            Text(
                                              'I have accepted the',
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w900),
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            InkWell(
                                              onTap: () {},
                                              child: Text(
                                                'Conditions',
                                                style: TextStyle(
                                                    color: Color(0xff0097A7),
                                                    fontSize: 18,
                                                    fontWeight:
                                                        FontWeight.w900),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                          loginbutton,
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

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Homework 7',
      home: LoginUI(),
    ),
  );
}

class LoginUI extends StatefulWidget {
  @override
  _LoginUIState createState() => _LoginUIState();
}

class _LoginUIState extends State<LoginUI> {
  bool value = false;
  bool _obsecuretext = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50.0,
              ),
              Image.asset(
                'assets/images/burger.png',
                height: 120.0,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Burger',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                    ),
                  ),
                  Text(
                    'Queen',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Lobster',
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                 horizontal: 24.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                    ),
                    elevation: 12.0,
                    child: Padding(
                      padding:EdgeInsets.symmetric(
                        vertical: 24.0,
                      ),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'Hello',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Sign in you account',
                            style: TextStyle(
                              fontSize: 20.0,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: 'Input EmailID',
                                suffixIcon: Icon(
                                  Icons.mail,
                                  color: Colors.blue,
                                ),
                              ),

                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 24.0,
                            ),
                            child: TextField(
                              obscureText: _obsecuretext,
                              decoration: InputDecoration(
                                labelText: 'Input Password',
                                suffixIcon: IconButton(
                                  onPressed: (){
                                    setState(() {
                                      value = !value;
                                      _obsecuretext  = !_obsecuretext;
                                    });
                                  },
                                  icon: Icon(
                                      value ? Icons.visibility : Icons.visibility_off,
                                      color: Colors.blue,
                                  ),
                                ),
                              ),

                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 160.0,
                            ),
                            child: Text(
                              'Forgot your password? ',
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            width: 180.0,
                            child: RaisedButton(
                              onPressed: (){},
                              color: Colors.blue,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              elevation: 3.0,
                              child: Text(
                                'Login',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Text(
                            'Or Login using socail media',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RawMaterialButton(
                                onPressed: () {},
                                fillColor: Colors.white,
                                shape: CircleBorder(),
                                elevation: 3.0,
                                child: Icon(
                                  FontAwesomeIcons.facebookF,
                                  size: 20.0,
                                  color: Colors.blueAccent.withOpacity(0.7),
                                ),
                                padding: EdgeInsets.all(16.0),
                              ),
                              RawMaterialButton(
                                onPressed: () {},
                                fillColor: Colors.white,
                                shape: CircleBorder(),
                                elevation: 3.0,
                                child: Icon(
                                  FontAwesomeIcons.google,
                                  size: 20.0,
                                  color: Colors.red.withOpacity(0.7),
                                ),
                                padding: EdgeInsets.all(16.0),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Do not have an account?',
                    style: TextStyle(
                      fontSize: 15.0,
                    ),
                  ),
                  Text(
                    'Create Account',
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

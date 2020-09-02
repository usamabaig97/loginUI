import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{
runApp(myapp());
}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Login UI",
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: myhomepage(),
    );
  }
}
class myhomepage extends StatefulWidget {
  @override
  _myhomepageState createState() => _myhomepageState();
}

class _myhomepageState extends State<myhomepage> {
  String usernam;
  String passwid;
  String logi = 'Forget Password ?';
  String Username ='admin' ;
  String Password = '1234';
  void securty()
  {
    setState(() {
      if(usernam == Username && passwid == Password)
        {
          logi = 'Logged in Succesfully ';
        }
      else {
        logi = 'Failed Succcesfully';
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Image.asset('assets/images/newbackground.jpg',
          fit: BoxFit.cover,
            color: Colors.pink,
            colorBlendMode: BlendMode.colorBurn,
          ),
          Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.only(top: 10.0),
               child: Image.asset("assets/images/vector1.png",
                  height: 130.0,
                  width: 130.0,
                ),
              ),
              Stack(
                children: <Widget>[
                  SingleChildScrollView(
                    child: Container(
                    height: 250,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(50.0,30.0),bottomLeft: Radius.circular(5.0),),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: <Widget>[
                      Material(
                        elevation: 200.0,
                        shadowColor: Colors.pink,
                       child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            textInputAction: TextInputAction.next,
                            onSubmitted: (_) => FocusScope.of(context).nextFocus(),
                            onChanged: (text) {
                              usernam=text;
                            },
                            autocorrect: false,
                            autofocus: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              filled: true,
                              fillColor: Colors.black12,
                              prefixIcon: Icon(Icons.person),
                              labelText: "Username",
                              labelStyle: TextStyle(
                                fontSize: 20.0,
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0,),),
                                borderSide: BorderSide(color: Colors.blue),
                              ),
                            ),
                            style: TextStyle(
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                        Material(
                          elevation: 50.0,
                          shadowColor: Colors.pink,
                          child: Padding(
                            padding: EdgeInsets.only(bottom: 15.0,left: 15.0,right: 15.0),
                            child: TextField(
                              onChanged: (text)
                              {
                                passwid=text;
                              },
                              obscureText: true,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.black12,
                                contentPadding: EdgeInsets.all(0.0),
                                prefixIcon: Icon(Icons.security),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                  fontSize: 20.0,
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(20.0,),),
                                  borderSide: BorderSide(color: Colors.blue),
                                ),
                              ),
                              style: TextStyle(
                                fontSize: 18.0,
                              ),
                            ),
                          ),
                        ),
                          Padding(padding: EdgeInsets.only(right: 5.0),
                            child:  Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text("$logi",
                                ),
                              ],
                            ),
                          ),
                           Padding(
                             padding: EdgeInsets.only(top: 15.0,),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                               children: <Widget>[
                                 RaisedButton(
                                   elevation: 20.0,
                                   shape: RoundedRectangleBorder(
                                     borderRadius: BorderRadius.only(bottomRight: Radius.elliptical(20.0,15.0),bottomLeft: Radius.circular(5.0),),
                                   ),
                                   onPressed: securty,
                                   color: Colors.cyan,
                                   splashColor: Colors.greenAccent,
                                   child: Text(
                                     "Login",
                                     style: TextStyle(
                                       fontSize: 18.0,
                                     ),
                                   ),
                                 ),
                                 FlatButton(onPressed: () {
                                   SystemNavigator.pop();
                                 },
                                   splashColor: Colors.greenAccent,
                                   child: Text(
                                     "not now",
                                     style: TextStyle(
                                       fontSize: 18.0,
                                       fontWeight: FontWeight.w400,
                                       color: Colors.black54,
                                     ),
                                   ),
                                 ),
                               ],
                             ),
                           ),
                      ],
                    ),
                   ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}


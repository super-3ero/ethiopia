import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{

  @override
  _Login createState()=> _Login();
}

class _Login extends State<Login>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
          children: <Widget>[
            Container(
            width: double.infinity,
            height: 300,
//            child: Image.asset(''),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.1,0.9],
                      colors: [
                        Color(0xFF3594DD),
                        Color(0xFF4563DB),
                      ]
                  )
              ),
            ),
            Center(
              child: Container(
                height: 430.0,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:20.0),
                          child: Text('Login to your account ',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 22.0,
                          ),
                          textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Please enter your email and password \n to login ',style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              labelText:'Email',
                              hintText: 'Someone@example.com',
                              labelStyle: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                              )
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: TextField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                                labelText:'Password',
                                labelStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                )
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 25.0),
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.only(left:8.0,right: 8.0),
                            child: RaisedButton(
                              color: Colors.blueAccent,
                              onPressed: () {},
                              elevation: 5.0,
                              padding: EdgeInsets.all(15.0),
                              child: Text('Login',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',fontSize: 16.0),),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
    );
  }

}
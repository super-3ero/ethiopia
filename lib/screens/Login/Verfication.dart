import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Verfication extends StatefulWidget{

  @override
  _Verfication createState()=> _Verfication();

}

class _Verfication extends State<Verfication>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Widget _buidSetUpText() {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text('Verify your account ', style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 22.0,
        ),
          textAlign: TextAlign.center,
        ),
      );
    }
    Widget _buildSubText() {
      return Padding(
        child: Text('Please enter the 6 digit code \n to verify your account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.all(8.0),
      );
    }
    Widget _buildCode() {

      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.phone,
          maxLength: 6 ,
          decoration: InputDecoration(
              labelText: 'Code',
              hintText: '',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
          ),
        ),
      );
    }
    Widget _buildVerifyAccount(){
      return  Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: RaisedButton(
            color: Colors.green,
            onPressed: () {},
            elevation: 5.0,
            padding: EdgeInsets.all(15.0),
            child: Text('Verify Account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',fontSize: 16.0),),
          ),
        ),
      );
    }
    Widget _buildResendVerficationCode(){
      return  Container(
        decoration: BoxDecoration(),
        width: 500,
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(15.0),
          child: InkWell(child: Text('Resend Verfication Code',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',fontSize: 16.0),textAlign: TextAlign.center  ,)),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 300.0,
            width: double.infinity,
            color: Colors.green,
          ),
          Center(
            child: Container(
              height: 400.0,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Column(
                    children: <Widget>[
                      _buidSetUpText(),
                      _buildSubText(),
                      _buildCode(),
                      _buildVerifyAccount(),
                      _buildResendVerficationCode()
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
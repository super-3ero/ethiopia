import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class SetUpProfile extends StatefulWidget{

  @override
  _SetUpProfile createState()=> _SetUpProfile();
}
class _SetUpProfile extends State<SetUpProfile> {
  @override
  Widget build(BuildContext context) {
    Widget _buidSetUpText() {
      return Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: Text('Set up your account ', style: TextStyle(
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
        child: Text('Please fill out the form below \n to create your account',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
          ),
          textAlign: TextAlign.center,
        ),
        padding: const EdgeInsets.all(8.0),
      );
    }
    Widget _buildFullName() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Full Name',
              hintText: 'Sador Eshetu',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
          ),
        ),
      );
    }
    Widget _buildUserName() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'User Name',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
          ),
        ),
      );
    }
    Widget _buildProfilePicture() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          height: 80.0,
          width: 80.0,
          child: Image.asset("assets/images/onboarding1.png"),
        ),
      );
    }
    Widget _buildGender() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Gender',

              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
          ),
        ),
      );
    }
    Widget _buildDOB() {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              labelText: 'Date Of birth',
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black
              )
          ),
        ),
      );
    }
    Widget _buildCreateAccount(){
      return  Container(
        decoration: BoxDecoration(),
        padding: EdgeInsets.symmetric(vertical: 25.0),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left:8.0,right: 8.0),
          child: RaisedButton(
            color: AppColors.indigo,
            onPressed: () {},
            elevation: 5.0,
            padding: EdgeInsets.all(15.0),
            child: Text('Create Account',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontFamily: 'ubuntu',fontSize: 16.0),),
          ),
        ),
      );
    }
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: 400.0,
            width: double.infinity,
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
            child: Padding(
              padding: const EdgeInsets.only(top:80.0),
              child: Container(
                height: 750,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 10,
                    color: Colors.white,
                    child: ListView(
                      children: <Widget>[
                        _buidSetUpText(),
                        _buildSubText(),
                        _buildProfilePicture(),
                        _buildFullName(),
                        _buildUserName(),
                        _buildGender(),
                        _buildDOB(),
                        _buildCreateAccount()
                      ],
                    ),
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/screens/Login/PhoneVerfication.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class PhoneAuthentication extends StatefulWidget{

  @override
  _PhoneAuthentication createState() => _PhoneAuthentication();
}
class _PhoneAuthentication extends State<PhoneAuthentication>{
  @override
  Widget build(BuildContext context) {
    Widget _Country() {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0,right: 16.0,left: 16.0),
        child: TextField(
          enabled: false,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom:5.0),
              labelText: 'Ethiopia (+251)',
              hintText:  'Country ',
              counterText: 'Country',
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'Roboto'
              ),
              disabledBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                      color: Colors.white
                  )
          )
          ),
        ),
      );
    }
    Widget _PhoneNumber(){
      return Padding(
         padding: const EdgeInsets.only(left:16.0,right: 16.0),
         child: TextField(
           maxLength: 10,
           maxLines: 1,
           enabled: true,
           cursorColor: Colors.white70,
           style: TextStyle(
            color: Colors.white,
            fontFamily: 'Roboto',
            fontWeight: FontWeight.bold
          ),
          keyboardType: TextInputType.phone,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.only(bottom:5.0),
              hintText:  'Phone Number',
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white70
              ),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  backgroundColor: Colors.white70,
                  fontFamily: 'Roboto'
              ),
              enabledBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                      color: Colors.white
                  )
              ),
              focusedBorder: new UnderlineInputBorder(
                  borderSide: new BorderSide(
                      color: Colors.white
                  )
              )
          ),
         ),
      );
    }
    Widget _SMS(){
      return Center(
        child: Padding(
          padding: const EdgeInsets.only(top:50.0),
          child: Text('A 6 digit SMS code will be \n sent to your phone' , textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.w300,
              color: Colors.white,
              fontSize: 16.0,
              fontFamily: 'Roboto'

          ),
          ),
        ),
      );
    }
    Widget _Verify(){
      return Center(
        child: Container(
          width: 250.0,
          child: InkWell(
            child: Padding(
              padding: EdgeInsets.only(left: 0.0, right: 0.0 , top: 50),
              child: RaisedButton(
                textColor: Colors.white70,
                color: AppColors.lightBlue,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Continue", style: TextStyle(

                    fontFamily: 'roboto',
                    fontSize: 18,

                  ),),
                ),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => PhoneVerification()));
                },
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(25.0),
                ),
              ),
            ),
          ),
        ),
      );
    }


    return Scaffold(
      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.1,0.4,0.7,0.9],
                  colors: [
                    Color(0xFF3594DD),
                    Color(0xFF4563DB),
                    Color(0xFF5036D5),
                    Color(0xFF5B16D0)
                  ]
              )
          ),
          child: ListView(
            children: <Widget>[
              Container(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                      icon: Icon(Icons.keyboard_backspace,color: Colors.white,),
                      onPressed: () {

                      },
                    ),
                  ),
                    Container(
                      alignment:Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Log in' , textAlign: TextAlign.center, style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:100.0 , right: 50.0 ,left: 50.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        _Country(),
                        _PhoneNumber(),
                        _SMS(),
                        _Verify()
                      ],
                    ),
                  ),
                ),
              )
            ],
          )
          ,
        ),
      ),
    );
  }

}
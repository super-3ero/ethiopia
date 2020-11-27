import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Widgets/CompanyInfo.dart';

class CompanyInfoAndServices extends StatefulWidget{
  @override
  _CompanyInfoAndServices createState() => _CompanyInfoAndServices();
}
class _CompanyInfoAndServices extends State<CompanyInfoAndServices>{
  @override
  Widget build(BuildContext context) {

    Widget _sendMessage(){
      return  Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left:0.0,right:0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Text('300000  /  month',style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontFamily: 'SFProText'
//              ),),
//              SizedBox(width: 20,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.black
                    ),
                    borderRadius: BorderRadius.circular(10)
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                  color: Colors.white,

                  onPressed: () {  },
                  child: Text('Send Message' , style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                      fontFamily: 'SFProText'

                  ),),
                ),
              ),

            ],
          ),
        ),
      );
    }
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color(0xfff6f6f6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xfff6f6f6),
        centerTitle: true,
        title: Text('Work Space' , style: TextStyle(
            color: Colors.black,
            fontFamily: 'SFProText',
            fontSize: 15,
            fontWeight: FontWeight.w500
        ),),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(50)),
            color: Colors.white
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:20.0,right: 20.0,top: 2.3),
              child: Container(
                height: MediaQuery.of(context).size.height-92.4,
                child: ListView(

                  children: <Widget>[
                    CompanyInfo()
                  ],
                ),
        ),
            ),

      ]
    ),
      ),

    );
  }

}
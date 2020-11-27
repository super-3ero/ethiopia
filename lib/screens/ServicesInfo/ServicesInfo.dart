import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class ServicesInfo extends StatefulWidget{

  @override
  _ServicesInfo createState()=> _ServicesInfo();


}

class _ServicesInfo extends State<ServicesInfo>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return  Scaffold(
    backgroundColor: Color(0xfff6f6f6),
    resizeToAvoidBottomPadding: false,
    appBar: AppBar(
      elevation: 0,
      backgroundColor: Color(0xfff6f6f6),
      centerTitle: true,
      title: Text('Sador Eshetu' , style: TextStyle(
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
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height-170,
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:25.0),
                      child: Container(
                        height: 130.0,
                        width: 130.0,
                        decoration: BoxDecoration(
                            color: AppColors.lighterGrey,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                            image: DecorationImage(
                                image:Image.asset('assets/images/bill.png').image,
                                fit: BoxFit.fitWidth
                            )
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    ),
    );
  }

}

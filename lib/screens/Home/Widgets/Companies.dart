import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/CompanyInfoAndServices/CompanyInfoAndServices.dart';

import 'package:work_space_ethiopia/utils/AppColors.dart';


Widget companies(){
  return  Container(
    height: 280.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => CompanyInfoAndServices()));
          },
          child: Container(
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26,
                    offset: Offset(0.0,2.0),
                    blurRadius: 6.0
                ),
              ],
            ),
            width: 225,
            child: Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Positioned(
                  bottom: 10.0,
                  child: Container(
                    alignment: Alignment.center,
                    height: 145.0,
                    width: 210,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,

                    ),
                    child:Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top:0.0),
                          child: RichText(
                            text: TextSpan(
                            children:[

                              TextSpan(
                                text: "Ethiopia Space Science Society Specialiy", style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                  fontSize: 15,
                                  fontFamily: 'SFProText'
                              )
                              ),
                              TextSpan(
                                text: '  '
                              ),
                              WidgetSpan(
                                child: Icon(Icons.check_circle, size: 15,color: Colors.blue,),
                              ),
                            ]
                            ),
                          ),

                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:5.0),
                          child: Text("Work Space is one of the growing companies that has over 20 million users" ,maxLines: 2, overflow:TextOverflow.ellipsis,style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 13,
                              fontFamily: 'Roboto'
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.star_border,color: AppColors.yellow,size: 20,),
                              SizedBox(width: 3.0,),
                              Text('4.5' , style: TextStyle(
                                  color: Colors.black
                              ),),
                              SizedBox(width: 5.0,),
                              Icon(Icons.location_on,color: AppColors.grey,size: 20,),
                              SizedBox(width: 1.0,),
                              Text('Bole' , style: TextStyle(
                                  color: Colors.black
                              ),),
                            ],
                          ),
                        )



                      ],
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Container(
                    width: 110,
                    height: 110,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0)),
                    ),
                    child: Stack(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius:BorderRadius.circular(10.0),
                          child: Image(
                            height: 110.0,
                            width: 110.0,
                            image: Image.asset("assets/images/image.jpg").image,
                            fit: BoxFit.cover,
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },


    ),
  );
}

Widget roundedComapnies(){
  return Container(
    height: 200,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index){
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  width: 150,
                  height: 150,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0)),
                  ),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:BorderRadius.circular(10.0),
                        child: Image(
                          height: 150.0,
                          width: 150.0,
                          image: Image.asset("assets/images/image.jpg").image,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    ),
  );
}



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:work_space_ethiopia/screens/JobInfo/JobInfo.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

Widget jobs(BuildContext context){
  return Container(
    child: ListView.builder(
        primary: false,
        shrinkWrap: true  ,
        itemCount: 5,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => JobInfo()));
            },
            child: Container(
              height: 150,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0,2.0),
                      blurRadius: 6.0
                  ),
                ],
              ),
              child: Stack(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left:8.0),
                    child: Container(
                      width: 118,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius:BorderRadius.circular(10.0),
                            child: Image(
                              height: 110.0,
                              width: 110.0,
                              image: Image.asset("assets/images/image.jpg").image,
                              fit: BoxFit.fill,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 125,
                    top: 10,
                    child: Container(
                      alignment: Alignment.topRight,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                      ),
                      width: 275,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('Sador Eshetu Hassen ',overflow:TextOverflow.ellipsis,maxLines: 1, style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                                fontSize: 14,
                                fontFamily: 'SFProText'
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("Graphics Designer ," ,maxLines: 2, style: TextStyle(
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.5,
                                  fontSize: 13,
                                  fontFamily: 'Roboto'
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Text("We Design products based on ideas and what we love and value the most for everyone" ,maxLines: 2,overflow: TextOverflow.ellipsis, style: TextStyle(
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                  fontSize: 12,
                                  fontFamily: 'Roboto'
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top:5.0),
                              child: Row(
                                children: <Widget>[
                                  Icon(LineAwesomeIcons.clock_1,color: Colors.grey,size: 15,),
                                  SizedBox(width: 3.0,),
                                  Flexible(
                                    child: Text('5 mins ago' , style: TextStyle(
                                        color: Colors.grey,
                                      fontSize: 13
                                    ),),
                                  ),
//                                  SizedBox(width: 5.0,),
//                                  Icon(Icons.attach_money,color: AppColors.grey,size: 20,),
//                                  SizedBox(width: 1.0,),
//                                  Text('3000' , style: TextStyle(
//                                      color: Colors.black
//                                  ),),
//
//                                  SizedBox(width: 5.0,),
//                                  Icon(Icons.location_on,color: AppColors.grey,size: 20,),
//                                  SizedBox(width: 1.0,),
//                                  Flexible(
//                                    child: Text('Addis Ababa' , maxLines: 1,overflow:TextOverflow.ellipsis,style: TextStyle(
//                                        color: Colors.black
//                                    ),),
//                                  ),

                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          );
        }
    ),
  );
}
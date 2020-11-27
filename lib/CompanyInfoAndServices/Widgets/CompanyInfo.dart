import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Freelancers.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Jobs.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class CompanyInfo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right:16.0,left: 16.0,top: 20.0,bottom: 0.0),
            child: Container(
              child: Text('About Work Space' , style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold

              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Bachelors Degree or equivalent practical experience Bachelors Degree or equivalent practical experience' , style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.none
            ),),

          ),
          Padding(
            padding: const EdgeInsets.only(right:16,left:16.0,top:0.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent.withOpacity(0.2),
                    shape: BoxShape.circle
                  ),
                  child: Icon(
                    LineAwesomeIcons.calendar_1,color: Colors.deepPurpleAccent,
                  ),
                ),
                SizedBox(width: 10.0,),
                Text('Established on August 5 2001', style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w300
                ),)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right:16,left:16.0,top:10.0),
            child: Row(
              children: <Widget>[
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Colors.orange.withOpacity(0.2),
                      shape: BoxShape.circle
                  ),
                  child: Icon(
                    Icons.location_on,color: AppColors.yellow,
                  ),
                ),
                SizedBox(width: 10.0,),
                Text('Old Airport Road , Freindship', style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300
                ),)
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(right:16.0,left: 16.0,top: 20.0,bottom: 10.0),
            child: Container(
              child: Text('Services From Work Space' , style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold

              ),),
            ),
          ),
         ListView.builder(
           primary: false,
           shrinkWrap: true,
           itemCount: 5,
           scrollDirection: Axis.vertical,
           itemBuilder: (BuildContext context,int index){
             return Container(
               height: 180,
               margin: EdgeInsets.all(10.0),
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(10.0),
                 boxShadow: [
                   BoxShadow(
                       color: Colors.black26,
                       offset: Offset(0.0,2.0),
                       blurRadius: 6.0
                   ),
                 ],
               ),
               child: Padding(
                 padding: const EdgeInsets.all(16.0),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: <Widget>[
                     Padding(
                       padding: const EdgeInsets.only(bottom:8.0),
                       child: Text('App Development',style: TextStyle(
                         color: Colors.black,
                         fontWeight: FontWeight.w600
                       ),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(bottom:8.0),
                       child: Text('We develop apps that are neat and clean we focus on our customers and we do not hessitate',style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.w500
                       ),),
                     ),
                     Padding(
                       padding: const EdgeInsets.only(),
                       child: Row(
                         children: <Widget>[
                           Container(
                             width: 40,
                             height: 40,
                             decoration: BoxDecoration(
                                 color: Colors.green.withOpacity(0.2),
                                 shape: BoxShape.circle
                             ),
                             child: Icon(
                               Icons.attach_money,color: Colors.green,
                             ),
                           ),
                           SizedBox(width: 10.0,),
                           Text('Starting Price 3000 ETB', style: TextStyle(
                               color: Colors.grey,
                               fontWeight: FontWeight.w300
                           ),)
                         ],
                       ),
                     ),
                   ],

                 ),
               ),
             );
           },
         ),
          Padding(
            padding: const EdgeInsets.only(right:16.0,left: 16.0,top: 20.0,bottom: 10.0),
            child: Container(
              child: Text('Job Openings ' , style: TextStyle(
                  fontSize: 16,
                  color: Colors.black54,
                  fontWeight: FontWeight.bold

              ),),
            ),
          ),
          ListView.builder(
            primary: false,
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context,int index){
              return Container(
                height: 180,
                margin: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0,2.0),
                        blurRadius: 6.0
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16.0,top:16.0,bottom: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: [
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(bottom:8.0),
                              child: Flexible(
                                child: Text('App Development and du doligance',maxLines: 1,overflow: TextOverflow.ellipsis,   style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                ),),
                              ),
                            ),
                            width: 220,
                            color: Colors.white,
                          ),

                          Padding(
                            padding: const EdgeInsets.only(bottom:8.0),
                            child: Container(
                              alignment: Alignment.center,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.deepPurple,
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0),bottomLeft: Radius.circular(10.0))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(left:8.0,right: 8.0),
                                child: Text(
                                  'Applied',style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                                ),
                                ),
                              ),
                            ),
                          )
                        ],
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:8.0,right: 16.0),
                        child: Text('We develop apps that are neat and clean we focus on our customers and we do not hessitate',style: TextStyle(

                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.deepOrangeAccent.withOpacity(0.2),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(
                                LineAwesomeIcons.briefcase,color: Colors.deepOrangeAccent,size: 20,
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            Text('Full Time' , style: TextStyle(
                                color: Colors.black
                            ),),
                            SizedBox(width: 15.0,),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  color: Colors.green.withOpacity(0.2),
                                  shape: BoxShape.circle
                              ),
                              child: Icon(
                                LineAwesomeIcons.wavy_money_bill,color: Colors.green,size: 20,
                              ),
                            ),
                            SizedBox(width: 5.0,),
                            Text('3000' , style: TextStyle(
                                color: Colors.black
                            ),),

                            SizedBox(width: 5.0,),
                          ],
                        ),
                      ),
                    ],

                  ),
                ),
              );
            },
          ),

        ],
      ),
    );

  }

}
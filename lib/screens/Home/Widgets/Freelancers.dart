import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/screens/FreelancerInfo/FreelancersInfo.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

Widget freelancers(){
  return Container(
    height: 150,
    child: ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => FreelancersInfo()));
          },
          child: Container(
            width: 320,
            margin: EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: AppColors.yellow,
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
                Container(
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                  ),
                  child: Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius:BorderRadius.circular(10.0),
                        child: Image(
                          height: 150.0,
                          width: 120.0,
                          image: Image.asset("assets/images/bill.png").image,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
                  ),
                ),
                Positioned(
                  left: 120,
                  child: Container(
                    alignment: Alignment.topRight,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10.0),bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                    ),
                    width: 200,
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
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text("Graphics Designer ," ,maxLines: 2, style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 0.5,
                                fontSize: 13,
                                fontFamily: 'Roboto'
                            ),),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Text("We Design products based on ideas and what we love and value the most for everyone" ,maxLines: 2,overflow: TextOverflow.ellipsis, style: TextStyle(
                                color: Colors.grey,
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
                                Icon(Icons.star_border,color: AppColors.yellow,size: 20,),
                                SizedBox(width: 8.0,),
                                Text('4.5' , style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                  fontFamily: 'Roboto'
                                ),),
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
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/screens/ServicesInfo/ServicesInfo.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

Widget services(){
  return  Container(
    height: 320.0,
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => ServicesInfo()));
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
                    height: 125.0,width: 210,
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
                          child: Text("Sador Eshetu Hassen" ,maxLines: 1,overflow: TextOverflow.ellipsis, style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.5,
                              fontSize: 12,
                              fontFamily: 'Roboto'
                          ),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:8.0),
                          child: Text("Graphics Designer ," ,maxLines: 2, style: TextStyle(
                              color: Colors.black,
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
                          padding: const EdgeInsets.only(top:8.0),
                          child: Row(
                            children: <Widget>[
                              Icon(Icons.star_border,color: AppColors.yellow,size: 20,),
                              SizedBox(width: 3.0,),
                              Text('4.5' , style: TextStyle(
                                  color: Colors.black
                              ),),
                          SizedBox(width: 5.0,),
                          Icon(Icons.attach_money,color: AppColors.grey,size: 20,),
                          SizedBox(width: 1.0,),
                          Text('3000' , style: TextStyle(
                              color: Colors.black
                          ),),

                          SizedBox(width: 5.0,),
                              Icon(Icons.location_on,color: AppColors.grey,size: 20,),
                              SizedBox(width: 1.0,),
                              Flexible(
                                child: Text('Addis Ababa' , maxLines: 1,overflow:TextOverflow.ellipsis,style: TextStyle(
                                    color: Colors.black
                                ),),
                              ),

                            ],
                          ),
                        )



                      ],
                    ),

                  ),
                ),
                Container(
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
                          width: 230.0,
                          image: Image.asset("assets/images/image.jpg").image,
                          fit: BoxFit.cover,
                        ),
                      ),

                    ],
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
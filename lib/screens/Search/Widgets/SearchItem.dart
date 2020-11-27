import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class SearchItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context , int index){
        return Container(
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
                Container(
                  width: 130,
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
                Positioned(
                  left: 130,
                  top: 5,
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
                          Text('Brana Writings inc  ',overflow:TextOverflow.ellipsis,maxLines: 1, style: TextStyle(
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
                            padding: const EdgeInsets.only(top:8.0),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.assignment,color: Colors.green,size: 20,),
                                SizedBox(width: 3.0,),
                                Text('Full Time' , style: TextStyle(
                                    color: Colors.grey
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
                ),

              ],
            ),
          ),
        );
      },

      ),
    );
  }

}
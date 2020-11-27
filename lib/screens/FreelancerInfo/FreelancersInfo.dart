import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Freelancers.dart';
import 'package:work_space_ethiopia/screens/JobInfo/JobInfo.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class FreelancersInfo extends StatefulWidget{
  @override
  _FreelancersInfo createState()=> _FreelancersInfo();
}

class _FreelancersInfo extends State<FreelancersInfo>{
  Widget _order(){
    return  Container(
      height: 70,
      width: MediaQuery.of(context).size.width,
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left:0.0,right:0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                  child: Icon(Icons.message
                  )
              ),
            ),
            SizedBox(width: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 50,
              width: MediaQuery.of(context).size.width - 120,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                ),
                color: Colors.white,
                onPressed: () {  },
                child: Text('Order a Service' , style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
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
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height-170,
              child: Padding(
                padding: const EdgeInsets.only(left:30.0,right: 30.0),
                child: ListView(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left:0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical:25.0),
                            child: Container(
                              height: 120.0,
                              width: 120.0,
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
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:40.0 , left: 10),
                                    child: Flexible(
                                      child: Text('Sador Eshetu',maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16
                                      ),),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:5.0 , left: 10),
                                    child: Flexible(
                                      child: Text('Senior Graphics Designer',maxLines:1,overflow: TextOverflow.ellipsis,style: TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 14,
                                        color: Colors.grey
                                      ),),
                                    ),
                                  ),
                                ),
                                Container(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:5.0 , left: 10),
                                    child: Flexible(
                                      child: Row(
                                        children: [
                                          Icon(
                                              Icons.star_border,color: AppColors.yellow,size: 20,
                                          ),
                                          SizedBox(width: 5.0,),
                                          Text('4.5',maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey
                                          ),),
                                          SizedBox(width:20.0 ,),
                                          Icon(
                                            Icons.attach_money,color: AppColors.black,size: 20,
                                          ),
                                          SizedBox(width: 5.0,),
                                          Text('300',maxLines:2,overflow: TextOverflow.ellipsis,style: TextStyle(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14,
                                              color: Colors.grey
                                          ),),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text('About',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0 , bottom: 12.0),
                      child: Container(
                        child: Text('I am an 18 years old talented designer looking to provide my services for the company as well as to the public at a reasonable price . Let me help you',style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),),
                      ),
                    ),
                    Container(
                      child: Text('Some of my work',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:12.0),
                      child: freelancers(),
                    ),
                  ],
                ),
              ),
            ),
            _order()
          ],
        ),

      ),
    );
  }

}
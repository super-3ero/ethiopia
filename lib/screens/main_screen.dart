import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:work_space_ethiopia/screens/AddService/AddService.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Freelancers.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Companies.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Jobs.dart';
import 'package:work_space_ethiopia/screens/MyProfile/MyProfile.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

import 'Home/Widgets/Services.dart';
import 'MessageList/MessageList.dart';
import 'MyProfile/ProfileSettings.dart';
import 'Search/Search.dart';


class Home extends StatefulWidget{

  State<StatefulWidget> createState() {
    @override
    _Home  createState()=> _Home();
    return createState();
  }

}

class _Home extends State<Home>{
  static int currentIndex = 0 ;
  final  controller = PageController(
    initialPage: currentIndex,);

  final iconCategory = [
    Icons.home,
    Icons.message,
    Icons.notifications_none,
    Icons.person_outline


  ];
  Widget _options(int index){
    return GestureDetector(

      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(right:8.0,left: 8.0),
          child: IconButton(
            onPressed: () {
              setState(() {
                controller.jumpToPage(index);
                currentIndex = index;
              });
            },
            icon: new Stack(
                children: <Widget>[
                  Icon(iconCategory[index]),
                  new Positioned(
                    right: 0.0,
                    top: 0.0,

                    child: new Icon(Icons.brightness_1, size: 7.0,
                      color: currentIndex==index?Colors.red:Colors.transparent,),
                  )
                ]
            ),
            color: currentIndex==index?Colors.black:Colors.grey,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        elevation: 0,
        title: Text("Work Space" , style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
          fontFamily: 'Roboto'
        ),),
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:10.0,bottom: 10.0,right: 10.0,left: 0.0),
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Search()));
              },
              child: Container(
                width: 120,
                height: 10,
                alignment: Alignment.centerRight,
                decoration: BoxDecoration(
                    color: AppColors.lighterGrey,
                    borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:0.0),
                  child: Center(
                    child: TextField(
                      enabled: false,
                      autofocus: false,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(border: InputBorder.none,hintText: 'Search',hintStyle: TextStyle(fontSize: 14,textBaseline: TextBaseline.ideographic,fontWeight: FontWeight.w800),suffixIcon: Icon(Icons.search ,color: Colors.black54, size: 16,)),
                    ),
                  ),
                ),
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.more_vert,color:Colors.black,),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileSettings()));
            },
          )
        ],

      ),
      floatingActionButton: new FloatingActionButton(

        child: Icon(Icons.add,color: Colors.black,),
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AddService()));
        },
        backgroundColor: AppColors.lighterGrey,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(

        elevation: 5,
        shape: CircularNotchedRectangle(),
        child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: iconCategory.asMap().entries.map(
                (MapEntry map) =>_options(map.key),
          ).toList()
        ),
      ),
      body: PageView(
        physics:new NeverScrollableScrollPhysics(),
        onPageChanged: (int index){
          currentIndex = index;
          _options(currentIndex);
        },
        controller: controller,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Freelancers' , style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),),
                      GestureDetector(
                        child: Text('More' , style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),
                freelancers(),

                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Companies' , style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),),
                      GestureDetector(
                        child: Text('More' , style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),
                roundedComapnies(),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:16.0,vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('Job Openings' , style: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold

                      ),),
                      GestureDetector(
                        child: Text('More' , style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold
                        ),),
                      ),
                    ],
                  ),
                ),
                jobs(context),
              ],
            ),

          ),
          Container(
            child: MessageList(),
          ),
          Container(
            child: Center(child:Text("Page 3")),
          ),
          ProfileSettings(),

        ],
      ),
    );
  }

}
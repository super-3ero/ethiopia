import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class MyProfile extends StatefulWidget {
  @override
  _MyProfile createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile>{
  static int selectedIndex = 0 ;
  List<String> category = [
    'Services',
    'Orders'
  ];

    final  controller = PageController(
    initialPage: selectedIndex,);

  Widget _header(){
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Profile', textAlign: TextAlign.center, style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 20.0,
                  fontFamily: 'Roboto',
                  letterSpacing: 1.0
              ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.mode_edit),
            color: Colors.black,
          ),

        ],
      ),
    );
  }
  Widget _profile(){
    return SafeArea(
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:15.0),
            child: Container(
              height: 130.0,
              width: 130.0,
              decoration: BoxDecoration(
                  color: AppColors.lighterGrey,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  image: DecorationImage(
                      image: NetworkImage("https://firebasestorage.googleapis.com/v0/b/work-space-ethiopia.appspot.com/o/Profile%2Fcropped1362973033340997170.jpg.jpg?alt=media&token=7614e2a0-63d8-47de-9d1d-70c02a9e9b43"),
                      fit: BoxFit.contain
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:.0),
            child: Container(
              height: 140.0,
              width: 240,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.person_outline , color: AppColors.grey,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:15.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('Sador Eshetu Hassen ' ,textAlign: TextAlign.start, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18 ,
                          ),),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.alternate_email , color: AppColors.grey,),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical:15.0),
                        child: Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Text('SadorEshetu ' ,textAlign: TextAlign.start, style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                            fontSize: 16 ,
                          ),),
                        ),
                      ),
                    ],
                  ),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  Widget _about(){
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20.0,vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('About' ,textAlign: TextAlign.start,style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: Colors.black
            ),),
            Padding(
              padding: const EdgeInsets.only(top:8.0),
              child: Text('Use the online image color picker right to select a color and get the HTML Color Code of this pixel. Also you get the HEX color code value, RGB value and HSV value. You can put a picture url in the textbox below or upload your own image' ,textAlign: TextAlign.start,style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.grey,
              ),
                maxLines: 3,),
            )
          ],
        ),
      ),
    );

  }
  Widget _pages(){
    return PageView(
      controller: controller,
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        _header(),
        _profile()
      ],
    );
  }
  Widget _options(int index){
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedIndex = index;
          controller.jumpToPage(index);
        });
      },
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(right:8.0,left: 8.0),
          child: Text(category[index] ,textAlign: TextAlign.start,style:TextStyle(
              color: selectedIndex==index?Colors.black:Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              letterSpacing: 1
          )
          ),
        ),
      ),
    );
  }
  Widget _curvedContainers(){
    return Expanded(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:12.0,right: 12.0,top: 20.0,bottom: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:
                  category.asMap().entries.map(
                        (MapEntry map) =>_options(map.key),
                  ).toList()
              ),
              Flexible(
                child: PageView(
                  controller: controller,
                  children: <Widget>[
                    Container(
                      height: 50,
                      child: Center(child:Text("Page 1")),
                    ),
                    Container(
                      height: 50,
                      child: Center(child:Text("Page 2")),
                    )
                  ],
                  pageSnapping: false,
                  onPageChanged: (int index){
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                ),
              ),
            ],

          ),
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left:20.0,top: 8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage("https://firebasestorage.googleapis.com/v0/b/work-space-ethiopia.appspot.com/o/Profile%2Fcropped1362973033340997170.jpg.jpg?alt=media&token=7614e2a0-63d8-47de-9d1d-70c02a9e9b43"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left:30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Sador Eshetu',style: TextStyle(
                          fontWeight: FontWeight.bold ,
                          color: Colors.black,
                          fontSize: 23.0),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Icon(Icons.business_center, color: Colors.black54,size: 17,),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text('App Developer/UX Designer',overflow: TextOverflow.ellipsis,maxLines: 2,style: TextStyle(color: Colors.black54 , fontWeight: FontWeight.bold),),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
            _about(),
            _curvedContainers(),


          ],
        )
    );
  }




  }


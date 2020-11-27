
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class JobInfo extends StatefulWidget{
  @override
  _JobInfo createState() => _JobInfo();
}

class _JobInfo extends State<JobInfo>{
  static int selectedIndex = 0 ;
  List<String> category = [
  'Description',
  'Company'
];
  TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

  }
  final  controller = PageController(initialPage: selectedIndex,);
  @override
  Widget build(BuildContext context) {

     Widget _apply(){
      return  Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        color: Colors.transparent,
        child: Padding(
          padding: const EdgeInsets.only(left:0.0,right:0.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
//              Text('300000  /  month',style: TextStyle(
//                  fontWeight: FontWeight.bold,
//                  fontFamily: 'SFProText'
//              ),),
//              SizedBox(width: 20,),
              Container(
                height: 50,
                width: MediaQuery.of(context).size.width - 40,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black
                  ),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  
                  color: Colors.white,

                  onPressed: () {  },
                  child: Text('Apply for job' , style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
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
     Widget _options(int index){
       return GestureDetector(
         onTap: (){
           setState(() {
             selectedIndex = index;
//             controller.jumpToPage(index);
           });
         },
         child: Container(
           alignment: Alignment.center,
           height: 40,
           width: 100,
           decoration: BoxDecoration(
             color: selectedIndex==index?Color(0xff312651):Color(0xffe6e4e6),
             borderRadius: BorderRadius.circular(10.0)
           ),
           child: Padding(
             padding: const EdgeInsets.only(right:8.0,left: 8.0),
             child: Flexible(
               child: Text(category[index] ,maxLines:1,overflow:TextOverflow.ellipsis,textAlign: TextAlign.start,style:TextStyle(
                   color: selectedIndex==index?Colors.white:Colors.grey,
                   fontWeight: FontWeight.bold,
                   fontSize: 12,
                   letterSpacing: 1
               )
               ),
             ),
           ),
         ),
       );
     }
     Widget _description(){
       return  Container(
         color: Colors.white,
         child:
           Column(
             children: [
               Container(
                 margin: EdgeInsets.only(left:10,right: 10.0),
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(20.0),
                     color: Colors.white
                 ),
                 child: ListView(
                   shrinkWrap: true,
                   primary: false,
                   children: [
                     Padding(
                       padding: const EdgeInsets.all(16.0),
                       child: SingleChildScrollView(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: <Widget>[
                             Text('About the job :' , style: TextStyle(
                                 color: Colors.black,
                                 fontWeight: FontWeight.bold,
                                 fontSize: 16,
                                 fontFamily: 'SFProText',
                                 decoration: TextDecoration.none
                             ),),
                             Padding(
                               padding: const EdgeInsets.only(top:16.0),
                               child: Text('Bachelors Degree or equivalent practical experience Bachelors Degree or equivalent practical experience\n\nBachelors Degree or equivalent practical experience' , style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w500,
                                   decoration: TextDecoration.none
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:16.0),
                               child: Text('Bachelors Degree or equivalent practical experience Bachelors Degree or equivalent practical experience\n\nBachelors Degree or equivalent practical experience' , style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w500,
                                   decoration: TextDecoration.none
                               ),),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(top:16.0),
                               child: Text('Bachelors Degree or equivalent practical experience Bachelors Degree or equivalent practical experience\n\nBachelors Degree or equivalent practical experience' , style: TextStyle(
                                   color: Colors.black,
                                   fontWeight: FontWeight.w500,
                                   decoration: TextDecoration.none
                               ),),
                             ),

                           ],
                         ),
                       ),
                     ),
                   ],
                 ),
               ),

//
             ],
           ),
       );
     }

    return Scaffold(
      resizeToAvoidBottomPadding: false,
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
          children: [
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
                                  image:Image.asset('assets/images/image.png').image,
                                  fit: BoxFit.fill
                              )
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom:0.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Text('Flutter App Developer',style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        fontSize: 18,
                        letterSpacing: 0.5
                      ),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5.0),
                    child: Container(
                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(Icons.location_on,color: AppColors.grey,size: 20,),
                           Text('Bole Rwanada',style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,
                              letterSpacing: 0.5
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(

                      alignment: Alignment.center,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            child: Padding(
                              padding: const EdgeInsets.only(left:20.0,right: 20.0,top: 5.0,bottom: 5.0),
                              child: Text('Full Time' , style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color:Colors.black
                              ),),
                            ),
                            decoration: BoxDecoration(
                              color:  Color(0xfff6f6f6),

                              borderRadius: BorderRadius.circular(5)
                            ),
                            height: 35,
                            alignment: Alignment.center,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 35,
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.only(left:20.0,right: 20.0,top: 5.0,bottom: 5.0),
                                child: Text('50,000 / month' , style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black
                                ),),
                              ),
                              decoration: BoxDecoration(
                                  color:  Color(0xfff6f6f6),
                                  borderRadius: BorderRadius.circular(5)
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children:
                          category.asMap().entries.map(
                                (MapEntry map) =>_options(map.key),
                          ).toList()
                      ),
                    ),
                  ),
                  Container(
                    child: _description(),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:0.0),
              child: _apply(),
            )

          ],
        ),

      ),
        
    );
  }
}

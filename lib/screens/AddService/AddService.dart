import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class AddService extends StatefulWidget{
  @override

  _AddService createState()=> _AddService();
}

class _AddService extends State<AddService>{
  static int currentIndex = 0 ;

  final  controller = PageController(
    initialPage: currentIndex,);

  final iconCategory = [
  ];


  Widget formFields (BuildContext context){
    return Container(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Service Name' ,textAlign: TextAlign.start, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 16,

            ),),
            TextField(
              maxLength: 45,
              cursorColor: Colors.grey,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: 'Ex: Graphics Designer',
                hintStyle: TextStyle(
                  color: Colors.grey
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),

              ),
            ),
            SizedBox(height: 20,),
            Text('Service Description' ,textAlign: TextAlign.start, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 16,

            ),),
            TextField(
              maxLength:300,
              keyboardType: TextInputType.multiline,
              cursorColor: Colors.grey,
              maxLines: null,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: 'Ex: I will provide a very clean and neat ui for companies , personal use and commercial use',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),

              ),
            ),
            SizedBox(height: 20,),
            Text('Service Location' ,textAlign: TextAlign.start, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 16,

            ),),
            TextField(
              maxLength: 45,
              keyboardType: TextInputType.text,
              cursorColor: Colors.grey,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: 'Ex: Bole,Adiss Ababa',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),

              ),
            ),
            SizedBox(height: 20,),
            Text('Service Category' ,textAlign: TextAlign.start, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 16,

            ),),
            TextField(
              maxLength: 45,
              keyboardType: TextInputType.text,
              cursorColor: Colors.grey,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: 'Ex: Designing',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),

              ),
            ),
            SizedBox(height: 20,),
            Text('Starting Price' ,textAlign: TextAlign.start, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 16,

            ),),
            TextField(
              maxLength: 8,
              keyboardType: TextInputType.text,
              cursorColor: Colors.grey,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: 'Ex: 5000',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),

              ),
            ),
            SizedBox(height: 20,),
            Text('Delivery Time' ,textAlign: TextAlign.start, style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
              letterSpacing: 1,
              fontSize: 16,

            ),),
            TextField(
              maxLength: 45,
              keyboardType: TextInputType.text,
              cursorColor: Colors.grey,
              maxLines: 1,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
              decoration: InputDecoration(
                hintText: 'Ex: 5 Days',
                hintStyle: TextStyle(
                    color: Colors.grey
                ),
                enabledBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),
                focusedBorder: new UnderlineInputBorder(
                    borderSide: new BorderSide(
                        color:  Color(0xfff2f3f6)
                    )
                ),

              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).viewInsets.bottom,
            ),
          ],
        ),
      ),
    );
  }
  Widget descriptionImage(){
    return Container(
      child: ListView(
        children: <Widget>[
          Column(
              children: <Widget>[
                Center(
                  child: Container(
                    height: 400,
                    width:400,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: NetworkImage(""),
                            fit: BoxFit.contain
                        )
                    ),

                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    child:   Text('Upload your own cover photo or we will choose a default image' ,textAlign: TextAlign.center, style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      letterSpacing: 1,
                      fontSize: 16,

                    ),),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Container(
                      width: 150,
                      height: 50.0,
                      child: RaisedButton(
                        color: Colors.blue,
                        onPressed: () {  },
                        textColor: Colors.white,
                        child: Text('Upload Photo' , style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                    ),
                  ),
                )
              ],
          )

        ],
      ),
    );
  }
  Widget done(){
    return Container(
      color: Color(0xfff2f3f6),
      child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top:16.0),
                  child: Container(
                    height: 400,
                    width:400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image:Image.asset("assets/images/done.jpg").image,
                            fit: BoxFit.contain
                        )
                    ),

                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  child:   Text('You have successfluly created your service.Press the Add Service button to add your services online' ,textAlign: TextAlign.center, style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    letterSpacing: 1,
                    fontSize: 16,

                  ),),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    width: 150,
                    height: 50.0,
                    child: RaisedButton(
                      color: Colors.blue,
                      onPressed: () {  },
                      textColor: Colors.white,
                      child: Text('Add Service' , style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                    ),
                  ),
                ),
              )
            ],
          )

        ],
      ),
    );
  }
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
            color: currentIndex==index?Colors.black:Colors.grey,
            icon: Icon(iconCategory[index]),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,

      backgroundColor: Color(0xfff2f3f6),

      appBar: AppBar(
        elevation: 0,
          backgroundColor: Color(0xfff2f3f6),
          brightness: Brightness.dark,
          centerTitle: true,

          title: Text('Add Service',textAlign: TextAlign.center, style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.0,

          ),),
      ),
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
      body: Padding(
        padding: const EdgeInsets.only(top:30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
          ),
          child: PageView(
            physics: NeverScrollableScrollPhysics(),
            onPageChanged: (int index){
              setState(() {
                currentIndex = index;
              });

            },
            controller: controller,
            children: [
              Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Container(
                  child: ListView(
                    children: <Widget>[
                      formFields(context),
                    ],
                  ),
                ),
              ),
              Container(
                child: Center(child:descriptionImage()),
              ),
              Container(
                child: Center(child:done()),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
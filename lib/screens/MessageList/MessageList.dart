import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageList extends StatefulWidget{

  @override
  _MessageList createState()=> _MessageList();
}
class _MessageList extends State<MessageList>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (BuildContext context , int index){
          return Padding(
            padding: const EdgeInsets.only(right:12.0,left: 12.0,top: 8),
            child: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Stack(
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/image.png"),
                    radius: 25,
                  ),

                  Positioned(
                    bottom: 0.0,
                    left: 6.0,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(6),
                      ),
                      height: 11,
                      width: 11,
                      child: Center(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.greenAccent,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          height: 7,
                          width: 7,
                        ),
                      ),
                    ),
                  ),

                ],
              ),

              title: Text(
                "Sador Eshetu",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text("Hello How are you doing my friend and where are you" ,maxLines: 1,overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Colors.grey
              ),),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  SizedBox(height: 10),
                  Text(
                    "11:40 am",
                    style: TextStyle(
                      fontWeight: FontWeight.w300,
                      fontSize: 11,
                    ),
                  ),

                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    constraints: BoxConstraints(
                      minWidth: 11,
                      minHeight: 11,
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(top: 1, left: 5, right: 5),
                      child:Text(
                        "99",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
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
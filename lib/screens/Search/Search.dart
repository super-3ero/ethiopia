import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Freelancers.dart';
import 'package:work_space_ethiopia/screens/Home/Widgets/Jobs.dart';
import 'package:work_space_ethiopia/screens/Search/Widgets/SearchItem.dart';
import 'package:work_space_ethiopia/utils/AppColors.dart';

class Search extends StatefulWidget{

  @override
  _Search createState()=> _Search();
}
class _Search extends State<Search> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();

  }
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.8,
        backgroundColor: Colors.white,
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:8.0,bottom: 0.0,left:8.0,right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_back_ios , size: 20,),
                SizedBox(width: 10,),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color(0xfff1f1f1)
                  ),
                  height: 40,
                  width: MediaQuery.of(context).size.width - 80,
                  child: Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: TextField(
                      cursorColor:AppColors.black ,
                      decoration: InputDecoration(
                        fillColor: Color(0xfff1f1f1),
                        focusColor:  Color(0xfff1f1f1),
                        hoverColor:  Color(0xfff1f1f1),
                        hintText: 'Search Anything',
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Color(0xfff1f1f1),
                            ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Color(0xfff1f1f1)
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                            color: Color(0xfff1f1f1),
                          ),
                        )
                      ),
                    ),
                  ),

                ),
                SizedBox(width: 10,),
                Icon(Icons.filter_list , size: 20,),
              ],
            ),
          ),
        ],
        bottom: TabBar(
          isScrollable: true,
          indicatorColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          labelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 0.5,
          ),
          tabs: <Widget>[
            new Tab(
              text: 'Job Openings',
            ),
            new Tab(
              text: 'Companies',
            ),
            new Tab(
              text: 'Freelancers',
            ),
          ],
          controller: _tabController,
        ),
      ),
      body: TabBarView(
        children: [
          SearchItem(),
          SearchItem(),
          SearchItem(),

        ],
        controller: _tabController,
      ),
    );

  }

}
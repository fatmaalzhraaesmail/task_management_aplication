import 'package:flutter/material.dart';
import 'package:task_management_aplication/postScreen.dart';
import 'package:task_management_aplication/profileScreen.dart';
import 'package:task_management_aplication/savedScreen.dart';

import 'Home_page.dart';
import 'elearn.dart';
class MasterScreen extends StatefulWidget {
  const MasterScreen({Key? key}) : super(key: key);

  @override
  _MasterScreenState createState() => _MasterScreenState();
}

class _MasterScreenState extends State<MasterScreen> {
  int _currentIndex = 0;

  var _screens = [
    MyHomePage(),
    Elearn(),
   PostScreen(),
    SavedScreen(),
    profileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    var screens = _screens;
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Container(child: screens[_currentIndex]),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          // elevation: 60,

          items: [

            BottomNavigationBarItem(icon: Icon(Icons.home),
              label:'Home',
              backgroundColor: Colors.white70,
              //  activeIcon: HomeScreen(),


            ),
            BottomNavigationBarItem(icon: Icon(Icons.layers),
              label:'feed',
              backgroundColor: Colors.white70,


            ),

            BottomNavigationBarItem(icon: Icon(Icons.add_circle,size: 30,),
              label:'Post',
              backgroundColor: Colors.white70,


            ),
//            BottomNavigationBarItem(icon: Icon(Icons.bookmark_outline),
            BottomNavigationBarItem(icon: Icon(Icons.import_contacts_rounded),

              label:'saved',
              backgroundColor: Colors.white70,
              // activeIcon: SavedScreen(),




            ),
            BottomNavigationBarItem(icon: Icon(Icons.person),


              label:'my account',
              backgroundColor: Colors.white70,
              //  activeIcon: profileMainScreen(),


            ),
          ],
          selectedItemColor: Colors.redAccent,
          unselectedItemColor: Colors.grey[500],

        ),

//        floatingActionButton: FloatingActionButton(
//
//          onPressed: (){},
//        ),
//        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
     ),
    );
  }
}

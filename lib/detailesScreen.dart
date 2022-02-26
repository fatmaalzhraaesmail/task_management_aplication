

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:task_management_aplication/Home_page.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:intl/intl.dart';
import 'package:task_management_aplication/master.dart';

import 'designLIneScreen.dart';

class DetailsScreen extends StatefulWidget {

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}
date()
{
  DateTime now= new DateTime.now();
  var formatter = new DateFormat().add_MMMM().format(now);
  return formatter;  }

dateyear2()
{
  DateTime now= new DateTime.now();
  var formatterd = new DateFormat().add_d().format(now);


  return  formatterd;  }
class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
       elevation: 0.0,
        backgroundColor: Colors.white,
        leading:GestureDetector(
          onTap: (){Navigator.push( context, MaterialPageRoute(builder: (context) => MasterScreen(),));},
          child:  Icon(Icons.arrow_back_ios,color: Colors.black,),

        ),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 15,top: 13,bottom: 13),
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                  spreadRadius: 0,
                ),
              ],

              borderRadius: BorderRadius.circular(5),
            ),
            child: GestureDetector(
            child:Icon(Icons.more_vert_rounded,color: Colors.black,)),
          ),

          Container(
            margin: EdgeInsets.only(right: 15,top: 13,bottom: 13),
            width: 30,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 15,
                  offset: Offset(0, 10),
                  spreadRadius: 0,
                ),
              ],

              borderRadius: BorderRadius.circular(5),
            ),
            child: GestureDetector(
                child:Icon(Icons.open_in_new_rounded,color: Colors.black,size: 25,)),
          ),
  ],
  ),
      body: SingleChildScrollView(
        child: Container(

          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               Text('Design Line Up',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          right: 10),
                      child: CircularPercentIndicator(
                        center: Text('85%',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey[700]),),
                        radius: 60,
                        progressColor:Color.fromRGBO(198, 102, 251, 1),
                        percent:85/100 ,
                        lineWidth: 13,
                        backgroundWidth: 3,
                        backgroundColor: Colors.grey.shade300,

                      ),
                    ),
                    SizedBox(width: 15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Team',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700),),
                        SizedBox(height: 15,),
                        Row(
                          children: [
                           Container(
                             width: 230,
                             child: Stack(
//                             alignment: Alignment.centerLeft,
                               overflow: Overflow.clip,
                               children: [
                                 TeamMember('assets/images/person2.jpg'),
                                 Positioned( left: 25, child: TeamMember('assets/images/person1.jpg')),
                                 Positioned(left: 50,child: TeamMember('assets/images/person7.jpg')),
                                Positioned(left: 75,child: TeamMember('assets/images/person4.jpg')),
                                Positioned(left: 100,child: TeamMember('assets/images/person5.jpg')),
                                 Positioned(left: 150,top:15,child: Text('+5 People',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700),),)
                               ],
                             ),
                           ),


                          ],

                        ),
                        SizedBox(height: 20,),
                        Row(children: [
                          Icon(Icons.date_range_outlined,color: Colors.grey[600],),
                          SizedBox(width: 7,),
                          Text('Started ${date()} , ${dateyear2()}',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700),)
                        ],),
                       SizedBox(height: 6,),
                       RaisedButton(onPressed: (){},
                         shape: RoundedRectangleBorder(
                           borderRadius:
                           BorderRadius.all(Radius.circular(15)),
                         ),

                       color: Color.fromRGBO(191, 241, 212, 1),
                         child: Row(
                           children: [
                             Icon(Icons.add,color: Colors.green.shade500),
                             SizedBox(width: 8,),
                             Text('Add task',style: TextStyle(color: Colors.green.shade500
                                 ,fontSize: 16,fontWeight: FontWeight.bold),),
                           ],
                         ),
                       ),
                      ],

                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Row(

                    children: [
                    Buttons('To-dos'),
                      SizedBox(width: 20,),
                      Buttons('UAT'),
                      SizedBox(width: 20,),
                      Buttons('Done'),

                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Container(child: designLIneScreen()),


              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget TeamMember(String img)
  {
    return ClipOval(
      child: Container(
        child: Image.asset(
         '${img}', fit: BoxFit.cover,),
        width: 40,
        height: 40,

      ),
    );
  }
  Widget Buttons( String text){
    return  RaisedButton(onPressed: (){},
      shape: RoundedRectangleBorder(
        borderRadius:
        BorderRadius.all(Radius.circular(15)),
      ),

      color: Colors.white,
      child: Text(text,style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.w700,fontSize: 16),),
    );
  }
}

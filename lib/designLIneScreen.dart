import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:task_management_aplication/projects.dart';

import 'master.dart';
class designLIneScreen extends StatefulWidget {
  @override
  _designLIneScreenState createState() => _designLIneScreenState();
}

class _designLIneScreenState extends State<designLIneScreen> {
  final List<dynamic> DesignLineLIst = DesignLine.CreateDesignline();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: GridView.builder(
          itemCount: DesignLineLIst.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 1,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 2/1

          ),

          itemBuilder: (context, index) =>
              _buildDesignLine(
                  context, DesignLineLIst[index])),
    );
  }
  Widget _buildDesignLine(BuildContext context,DesignLine designLine)
  {
    return InkWell(
      onTap: (){
        Navigator.push( context, MaterialPageRoute(builder: (context) => MasterScreen(),));
      },
      child: Container(

         decoration: BoxDecoration(



            color: Colors.white70,
//      color: Colors.orange,
            borderRadius: BorderRadius.circular(
                25),
            boxShadow: const [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 15,
                offset: Offset(
                    2, 8),
                spreadRadius: 1,
              ),
            ],

          ),
        margin: EdgeInsets.all(15),
//      color:designLine.designColor,
        child:Padding(
          padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for(int index=0;index<designLine.colorStatus!.length;index++)
                        status(designLine.status![index], designLine.colorStatus![index], designLine.backgroundColor![index]),
                    ],
                  ),
                  Icon(Icons.drag_indicator,color: Colors.grey[700],size: 25)
                ],
              ),
              SizedBox(height: 2,),
              Divider(color: Colors.grey[500],thickness: 1),
              SizedBox(height: 2,),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  TitleAndTime(designLine.designColor!,designLine.title!,designLine.time!)
                ],
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ProgressLinear(designLine.progress),
              ),
              SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    for(int i=0;i<designLine.imgs!.length;i++)
                peopleParticipant(designLine.imgs![i]),
                 SizedBox(width: 10,),
                    Text('Send invite',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,decoration: TextDecoration.underline,fontSize: 15),),
                  ],
                ),

                Icon(Icons.share_outlined,color: Colors.grey[700],size: 25),
              ],
            ),
          ),


            ],
          ),
        ),
//        Text('${designLine.title}')
      ),
    );
  }
  Widget status(txt,  statusColor, backGroundColor){
    return  Padding(
      padding: const EdgeInsets.only(right: 4),
    child: Container(

  padding: EdgeInsets.symmetric(
      horizontal: 12, vertical: 5),
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(
        15),
    color: backGroundColor,
  ),
  child: Text(
    '${txt}', style: TextStyle(
      color: statusColor,fontWeight: FontWeight.bold),),
),
//      child: Row(
//        children: [
//          Container(
//            height: 30,
////       width: 80,
//            child: RaisedButton(
//
//              onPressed: (){},
//
//              shape: RoundedRectangleBorder(
//                borderRadius:
//                BorderRadius.all(Radius.circular(25)),
//              ),
//              color: backGroundColor,
//              child: Text('${txt}',style:TextStyle(color:statusColor ,fontWeight: FontWeight.bold,),),
//            ),
//          ),
//
//        ],
//      ),
    );
  }
  Widget TitleAndTime(color , title,time){
    return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 10,
              height: 25,
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(5),
                  bottomLeft: Radius.circular(5),
                  topLeft: Radius.circular(5),
                  topRight: Radius.circular(5),
                ),
              ),
            ),
          ],
        ),
            Row(
              children: [
                SizedBox(width: 10,),
                Text('${title}',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w800,),)
              ],
            ),


       SizedBox(width: 20,),
        Row(
//          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.access_time_filled_outlined,color: Colors.grey[600],),
            SizedBox(width: 7,),
            Text('${time}',style: TextStyle(color: Colors.grey[600],fontSize: 15,fontWeight: FontWeight.w600),),
          ],
        )
      ],
    );
  }
  Widget ProgressLinear(progress)
  {
    return LinearPercentIndicator(
     width: 250.0,
      lineHeight: 5,
      percent: progress,
      animation: true,
      barRadius: Radius.circular(10),
      animationDuration: 2000,
      leading: Icon(Icons.flag_outlined,color: Colors.redAccent,size: 18,),
      trailing:Icon(Icons.flag,color: Colors.redAccent,size: 18) ,
      progressColor: Colors.redAccent,
    );
  }
Widget peopleParticipant(imgs)
{
  return  Container(
//    width: 230,
    child: ClipOval(

      child:Container(
          width: 30,
         height: 30,
         child: Image.asset("${imgs}",fit: BoxFit.cover,)) ,
    ),
  );
}
}



import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:task_management_aplication/detailesScreen.dart';
import 'package:task_management_aplication/projects.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'Home_page.dart';
class ProjectItems extends StatelessWidget {
  final List ProjectList = Projects.GenerateProjects(
  );
  final img=[];




  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,


      child: GridView.builder(
          itemCount: ProjectList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(

            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,

          ),

          itemBuilder: (context, index) =>
              _buildProject(
                  context, ProjectList[index])),
    );
  }


  Widget _buildProject(BuildContext context, Projects project) {
    return InkWell(
      onTap: (){
        Navigator.push( context, MaterialPageRoute(builder: (context) => DetailsScreen(),));
      },
      child: Container(


        padding: EdgeInsets.only(
            top: 15,left: 15,right: 15),
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
                  0, 8),
              spreadRadius: 0,
            ),
          ],

        ),
        child: Row(
//      mainAxisAlignment: MainAxisAlignment.start,
//      crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 3, top: 3),
                      child: Container(
                          width: 70,
                          child: Text(
                            '${project.title}', style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),)),
                    ),
                    SizedBox(
                      width: 12,),

                    _progressIndicator(
                        project.left!, project.circleColor!, project.percentage!),
                  ],
                ),
                SizedBox(
                  height: 5,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildStatus(
                        project.btnColor!, project.txtColor!, project.btntitle!),


                  ],
                ),
                SizedBox(
                  height: 9,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 3),
                      child: Text(
                        'Team', style: TextStyle(
                          color: Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,),
                Row(

                  children: [

                    Row(
                  children: [
                    for(int i=0;i<project.images!.length;i++)
                      TeamMembers(project.images![i]),
                    SizedBox(width: 10,),
                  ],

                 // ignore: unrelated_type_equality_checks

//                      children: [
////                     for (int i=0;i<project.images!.length;i++)
//
//                        ...ProjectList.map(
//                                (val) =>
//                                Stack(
////                                overflow: Overflow.visible,
//                                  alignment: Alignment.centerLeft,
//
//                                  children: [
//                                    for(int i = 0; i < val.images!.length; i++)
//                                      for(int j = 0; j <
//                                          val.images![i].length; j++)
//                                        ClipOval(
//                                          child: Container(
//
//                                            child: Image.asset(
//                                              val.images![i], fit: BoxFit.cover,),
//                                            width: 24,
//                                            height: 24,
//
//                                          ),
//                                        )
//                                  ],
//                                )).toList(
//                        ),
//                      ],

                    ),
//

                  ],
                ),

              ],
            ),
            SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }

  Widget _buildStatus(Color btnColor, Color txtColor, String txtTitle) {
    return Container(

      padding: EdgeInsets.symmetric(
          horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
            15),
        color: btnColor,
      ),
      child: Text(
        '${txtTitle}', style: TextStyle(
          color: txtColor,fontWeight: FontWeight.bold),),
    );
  }

  Widget _progressIndicator(num Left, Color circlecolor, double percentage) {
    return Container(
      margin: EdgeInsets.only(
          right: 10),
      child: CircularPercentIndicator(
        backgroundColor: Colors.grey.shade300,
        radius: 30.0,
        lineWidth: 5.0,
        percent: percentage,
        center: Text(
            '${Left}%',style: TextStyle(color: Colors.grey[600],fontWeight: FontWeight.bold),),
        progressColor: circlecolor,
      ),
    );
  }
Widget TeamMembers( imgs)
{

  return Container(
//    width: 230,
    child: ClipOval(

      child:Container(
          width: 25,
          height: 25,
          child: Image.asset("${imgs}",fit: BoxFit.cover,)) ,
    ),
  );
}


//  Widget TeamMembers()
//{
//  return Row(
//    children: [
//      ...ProjectList.map((val) => Stack(
////    overflow: ,
//        alignment: Alignment.centerLeft,
//        children: [
//          for(int i=0;i<val.images!.length;i++)
//            for(int j=0;j<val.images![i].length;j++)
//            ClipOval(
//              child: Container(
//
//                child:Image.asset( val.images![i], fit: BoxFit.cover,),
//                width: 20,
//                height: 20,
//
//              ),
//            )
//        ],
//      )).toList(),
//    ],
//  ) ;
//}


//  Widget TeamMembers()
//{
//  return Row(
//    children: [
//      ...ProjectList.map((val) => Stack(
////    overflow: ,
//        alignment: Alignment.centerLeft,
//        children: [
//          for(int i=0;i<val.images!.length;i++)
//            for(int j=0;j<val.images![i].length;j++)
//            ClipOval(
//              child: Container(
//
//                child:Image.asset( val.images![i], fit: BoxFit.cover,),
//                width: 20,
//                height: 20,
//
//              ),
//            )
//        ],
//      )).toList(),
//    ],
//  ) ;
//}
//}
//ClipOval(
//
//child:Container(
//width: 25,
//height: 25,
//color: Colors.black,
//child: Stack(
//children: [
//Image.asset('${image}',fit: BoxFit.cover,),
//],
//),
//),
}
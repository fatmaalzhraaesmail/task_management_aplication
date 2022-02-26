
import 'dart:core';

import 'package:flutter/material.dart';
import 'package:task_management_aplication/Home_page.dart';
import 'package:task_management_aplication/projects.dart';
class Projects{
  String? title;
  String? btntitle;
  Color? btnColor;
  Color? txtColor;
  num? left;
  double? percentage;

  Color? circleColor; // same word color
  List? images=[];
//  String? images;
  Projects({this.title,this.btntitle,this.btnColor,this.left,this.circleColor,this.images,this.txtColor,this.percentage,});
  static List< Projects> GenerateProjects(){
    return [
      Projects(
        title: '''Design Line up
         ''',
        btntitle: 'Urgent',
        left: 85,
          percentage : 85/100,
        btnColor: Color.fromRGBO(235, 185, 188, 1),
        txtColor: Colors.red,
        circleColor: Color.fromRGBO(198, 102, 251, 1),
        images: ['assets/images/person2.jpg','assets/images/person1.jpg','assets/images/person3.jpg','assets/images/person4.jpg',]
//       images: 'assets/images/person2.jpg',
      ),
      Projects(
          title:'Finesco',
          btntitle: 'New',
          txtColor: Color.fromRGBO(0, 8, 235, 1),
          left: 17,
          btnColor: Color.fromRGBO(140, 223, 235, 1),
          circleColor: Color.fromRGBO(114, 235, 179, 1),
          percentage : 17/100,
//        images: 'assets/images/person2.jpg',
          images: ['assets/images/person6.jpg','assets/images/person7.jpg','assets/images/person8.jpg','assets/images/person9.jpg',]

      ),
      Projects(
          title: '''Wide World
         ''',
          btntitle: 'In Progress',
          txtColor: Color.fromRGBO(235, 166, 115, 1),
          left: 85,
          percentage : 69/100,
          btnColor: Color.fromRGBO(255, 252, 190, 1),
//        images: 'assets/images/person2.jpg',
          circleColor: Color.fromRGBO(239, 128, 251, 1),
          images: ['assets/images/person14.jpg','assets/images/person13.jpg','assets/images/person12.jpg','assets/images/person11.jpg','assets/images/person10.jpg',]

      ),
      Projects(
          title: 'Yooki',
          btntitle: 'Done',
          txtColor: Color.fromRGBO(69, 235, 147, 1),
          percentage : 100/100,
          left: 100,
          btnColor:Color.fromRGBO(221, 235, 217, 1),
          circleColor: Colors.yellow,
//        images: 'assets/images/person2.jpg',
          images: ['assets/images/person1.jpg','assets/images/person9.jpg','assets/images/person8.jpg','assets/images/person7.jpg',]

      ),
    ];

  }

}
class DesignLine{
   List? status=[];
   List? colorStatus=[];
   List? backgroundColor=[];
  Color? designColor;
  String? title;
  double? progress;
  List? imgs=[];
  String?time;
  DesignLine({ this.status, this.colorStatus, this.backgroundColor,this.designColor,this.progress,this.title,this.imgs,this.time});
  static List< DesignLine> CreateDesignline(){
    return[
      DesignLine(
        status: ['New','Urgent'],
        colorStatus: [Color.fromRGBO(0, 8, 235, 1),Colors.red],
        backgroundColor: [Color.fromRGBO(140, 223, 235, 1),Color.fromRGBO(235, 185, 188, 1)],
        designColor:Color.fromRGBO(187, 235, 143, 1) ,
        progress: 50/100,
        title: 'Call With Australian',
        imgs: ['assets/images/person1.jpg','assets/images/person9.jpg',],
        time: '13:00-15:50',

      ),
      DesignLine(
        status: ['In Progress'],
        colorStatus: [Color.fromRGBO(235, 166, 115, 1)],
        backgroundColor: [Color.fromRGBO(255, 252, 190, 1)],
        designColor:Color.fromRGBO(239, 128, 251, 1),
        progress: 85/100,
        title: 'Send a review to client',
        imgs: ['assets/images/person1.jpg','assets/images/person9.jpg','assets/images/person4.jpg'],
        time: ' - ',

      ),
      DesignLine(
        status: ['New',],
        colorStatus: [Color.fromRGBO(0, 8, 235, 1)],
        backgroundColor: [Color.fromRGBO(140, 223, 235, 1)],
        designColor: Color.fromRGBO(255, 183, 251, 1),
        progress: 25/100,
        title: 'Check Weekly plan',
        imgs: ['assets/images/person8.jpg','assets/images/person10.jpg'],
        time: '09/30/2020 10:00',

      ),
    ];
  }

}
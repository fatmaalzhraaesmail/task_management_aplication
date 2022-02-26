import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:task_management_aplication/project.dart';
import 'package:task_management_aplication/projects.dart';

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final projectList= Projects.GenerateProjects();


  @override
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
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,

        title:Text('Good morining, Kristin',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.w700),),
        actions: [
          GestureDetector(
            onTap: (){},
            child: Container(

              margin: EdgeInsets.only(right: 12,bottom: 4,top: 8),

              child: ClipOval(

                child:Container(
                    width: 45,

                    color: Colors.black,


                    child: Image.asset("assets/images/person2.jpg",fit: BoxFit.cover,)) ,
              ),
            ),
          ),
        ],
      ),

      body:SingleChildScrollView(
        child: Container(
          color:Colors.white,

          child: Padding(
            padding: const EdgeInsets.only(left: 15,right: 15,top: 15),
            child: Column(
              children: [
                Container(

//                margin: EdgeInsets.symmetric(horizontal: 15),
//                width: 200,
//                height: 200,
                  decoration: const BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                         color: Colors.black12,
                        blurRadius: 15,
                        offset: Offset(0, 10),
                        spreadRadius: 0,
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),

//
//                    ],
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.only(left: 27,top: 20,bottom: 20,right: 5),
                    child: Row(

                      children: [
                        SizedBox(height: 20,),
                        Container(
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Text('${dateyear2()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 65,color: Colors.black,),),
                                SizedBox(height: 9,),
                                Text('${date()}',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.black,),),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(width: 28,),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
//                        SizedBox(height: 10,),
                              Text('Up next',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
                              SizedBox(height: 20,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(

                                    width: 5,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.orange.shade200,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(2),
                                          bottomLeft: Radius.circular(2),
                                          topLeft: Radius.circular(2),
                                          topRight: Radius.circular(2),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text('Meeting lunch with ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                                      SizedBox(height: 5,),
                                      Text('James Strobinsty',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),

                                    ],
                                  ),
                                  SizedBox(width: 40),
                                  Icon(Icons.drag_indicator,color: Colors.grey[600],),


                                ],),

                              SizedBox(height: 15,),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
//                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(

                                    width: 5,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        color: Colors.blueAccent.shade100,
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(2),
                                          bottomLeft: Radius.circular(2),
                                          topLeft: Radius.circular(2),
                                          topRight: Radius.circular(2),
                                        )
                                    ),
                                  ),
                                  SizedBox(width: 15,),
                                  Text("Daves's bithday party",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.black),),
                                  SizedBox(width: 27),
                                  Icon(Icons.drag_indicator,color: Colors.grey[600],),



                                ],),
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                searckBox(),
                SizedBox(height: 25,),
                Container(child: ProjectItems()),
//    Container(
////      color: Colors.orange,
////      width: 300,
////      height: 500,
//      child: GridView.builder(
//      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//      crossAxisCount: 2,
//      crossAxisSpacing: 10,
//      mainAxisSpacing: 10,
//      ),
//
//      itemBuilder: (context,index)=>_buildProject(context,projectList[index])),
//    )



              ],
            ),
          ),
        ),
      ),


    );
  }

}
Widget searckBox(){
return Stack(
  children: [
    Container(

      height: 60,

      decoration: BoxDecoration(

        borderRadius: BorderRadius.circular(20),

        color: Colors.grey.shade200,

      ),
      child:  const Padding(
        padding: EdgeInsets.only(left: 55,top: 7),
        child: TextField(

          autofocus: false,

          cursorColor: Colors.orange,

          style: TextStyle(

              color: Colors.black, fontSize: 18, fontWeight: FontWeight.w700
          ),

          decoration: InputDecoration(

            border: InputBorder.none,

            hintText: 'Search for projects, events, labels',

            hintStyle: TextStyle(

                color: Colors.black45, fontSize: 18, fontWeight: FontWeight.w700
            ),

          ),

        ),
      ),

    ),
    const Positioned(
        top: 15,
        left: 13,
        child: Icon(Icons.search_sharp,size: 35,)),
  ],
);
}
//Widget _buildProject(BuildContext context,Projects project)
//{
////  final projectList= Projects.GenerateProjects();
//  return Container(
////    color: Colors.orange,
//    padding: EdgeInsets.all(15),
//    decoration: BoxDecoration(
//      color: Colors.orange,
//      borderRadius: BorderRadius.circular(20),
//    ),
//    child: Row(
//      children: [
//        Text('${project.title}',style: TextStyle(color: Colors.orange),),
//      ],
//    ),
//  );
//}
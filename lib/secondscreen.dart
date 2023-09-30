import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  static const String routename = 'secondScreen';

  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: Image.asset(
                        'assets/images/Ellipse 10.png',
                        fit: BoxFit.fill,
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Hello, Jade",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Ready to workout?",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    Badge(
                        offset: Offset(1, 5),
                        child: Icon(
                          Icons.notifications,
                          color: Colors.black,
                          size: 30,
                        ))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  width: 326,
                  height: 82,
                  color: Color(0xffF8F9FC),
                  child: Row(

                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.heart_broken),
                              Text("Heart Rate",style: TextStyle(fontWeight: FontWeight.w400,fontSize:12 ),),
                            ],

                          ),
                          Row(
                            children: [
                              Text("81",style: TextStyle(fontWeight: FontWeight.w600,fontSize:18 ),),
                              Text("BPM",style: TextStyle(fontWeight: FontWeight.w500,fontSize:14 ),)

                            ],

                          ),
                        /*SizedBox(
                           height: 50,
                           child: VerticalDivider(
                             thickness: 2,
                             color: Colors.black.withOpacity(20),

                            ),
                         )*/
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(Icons.list),
                              Text("To-do",style: TextStyle(fontWeight: FontWeight.w400,fontSize:12 ),),
                            ],

                          ),
                          Row(
                            children: [
                              Text("32,5",style: TextStyle(fontWeight: FontWeight.w600,fontSize:18 ),),
                              Text("%",style: TextStyle(fontWeight: FontWeight.w500,fontSize:14 ),)

                            ],

                          ),
                          /*SizedBox(
                           height: 50,
                           child: VerticalDivider(
                             thickness: 2,
                             color: Colors.black.withOpacity(20),

                            ),
                         )*/
                        ],
                      ),

                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Workout Programs',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              TabBar(tabs: [
                Text('All Type',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                Text('Full Body',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                Text('Upper',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),
                Text('Lower',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: Colors.black),),



              ])

            ],
          ),
          /*bottomNavigationBar: BottomNavigationBar(
            items: [
              //BottomNavigationBarItem(icon: icon)
            ],
          ),*/
        ),
      ),
    );
  }
}

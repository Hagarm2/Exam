import 'package:exam/tabs/aalltyoe.dart';
import 'package:exam/tabs/fullbody.dart';
import 'package:exam/tabs/lower.dart';
import 'package:exam/tabs/upper.dart';
import 'package:exam/thirdscreen.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  static const String routename = 'secondScreen';

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  int index = 0;

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
                  //color: Color(0xffF8F9FC),
                  decoration: BoxDecoration(
                    color: Color(0xffEAECF5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IntrinsicHeight(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.heart_broken),
                                  Text(
                                    "Heart Rate",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "81",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "BPM",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),

                            ],
                          ),
                          SizedBox(
                            height: 70,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Color(0xffD9D9D9),
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.list),
                                  Text(
                                    "To-do",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "32,5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "%",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 70,
                            child: VerticalDivider(
                              thickness: 2,
                              color: Color(0xffD9D9D9),
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.local_fire_department_outlined),
                                  Text(
                                    "Calo",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "1000",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  ),
                                  Text(
                                    "Cal",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text(
                      'Workout Programs',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              TabBar(tabs: [
                Text(
                  'All Type',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  'Full Body',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  'Upper',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
                Text(
                  'Lower',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ]),
              Expanded(
                  child: TabBarView(
                      children: [AllType(), FullBody(), Upper(), Lower()]))
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Color(0xff363F72),
                  ),
                  label: "."),
              BottomNavigationBarItem(
                  icon: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, ThirdScreen.routename);
                      },
                      child: ImageIcon(
                        AssetImage('assets/images/navigation-pointer-01.png'),
                        color: Color(0xff363F72),
                      )),
                  label: "."),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/bar-chart-07.png'),
                      color: Color(0xff363F72)),
                  label: "."),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/user-03.png'),
                      color: Color(0xff363F72)),
                  label: '.'),
            ],
            selectedItemColor: Colors.grey,
            currentIndex: index,
            onTap: (value) {
              index = value;
              setState(() {});
            },
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

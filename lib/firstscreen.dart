import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:exam/secondscreen.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  static const String routename = 'firstScreen';

  //const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int index = 0;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Image(
                    image: AssetImage('assets/images/Group.png'),
                    width: 30,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Moody',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 160,
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
              child: Row(
                children: [
                  Text(
                    "Hello ,",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    " Sara Rose",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text(
                    "How are you feeling today ?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffE4E7EC),
                    radius: 30,
                    child: Image.asset("assets/images/Frame.png"),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffE4E7EC),
                    radius: 30,
                    child: Image.asset("assets/images/Frame (1).png"),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffE4E7EC),
                    radius: 30,
                    child: Image.asset("assets/images/Frame (4).png"),
                  ),
                  CircleAvatar(
                    backgroundColor: Color(0xffE4E7EC),
                    radius: 30,
                    child: Image.asset("assets/images/Frame (3).png"),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Love',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Cool',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Happy',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    'Sad',
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text('Feature',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff027A48)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff027A48),
                    size: 30,
                  )
                ],
              ),
            ),
            Container(
              child: Center(
                child: CarouselSlider(
                  items: [
                    Image(
                      image: AssetImage('assets/images/Frame 24.png'),
                      //width: 950,
                      fit: BoxFit.fitWidth,
                    ),
                    Image(
                      image: AssetImage('assets/images/Frame 24.png'),
                      //width: 950,
                      fit: BoxFit.fitWidth,
                    ),
                    Image(
                      image: AssetImage('assets/images/Frame 24.png'),
                      // width: 950,
                      fit: BoxFit.fitWidth,
                    )
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  ),
                ),

              ),
            ),
            DotsIndicator(
              dotsCount: 3,
              position: currentIndex.toDouble(),
            ),
            /* Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Icon(Icons.more_horiz,size: 50,)),
              ],
            ),*/
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Text('Exercise',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      )),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    "See more",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xff027A48)),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xff027A48),
                    size: 30,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image(image: AssetImage('assets/images/Frame 31.png')),
                  Image(image: AssetImage('assets/images/Frame 35.png')),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('assets/images/Frame 35 (1).png'),
                ),
                Image(image: AssetImage('assets/images/Frame 33.png')),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.green,
              ),
              label: "."),
          BottomNavigationBarItem(
              icon: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SecondScreen.routename);
                  },
                  child: ImageIcon(
                    AssetImage('assets/images/grid-01.png'),
                    color: Colors.green,
                  )),
              label: "."),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/calendar.png'),
                  color: Colors.green),
              label: "."),
          BottomNavigationBarItem(
              icon: ImageIcon(AssetImage('assets/images/user-03.png'),
                  color: Colors.green),
              label: '.'),
        ],
        selectedItemColor: Colors.grey,
        currentIndex: index,
        onTap: (value) {
          index = value;
          setState(() {});
        },
      ),
    );
  }
}

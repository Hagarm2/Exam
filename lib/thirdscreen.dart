import 'package:exam/firstscreen.dart';
import 'package:flutter/material.dart';

class ThirdScreen extends StatefulWidget {
  static const String routename = 'thirdScreen';

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  int index = 0;

  bool is_selected = false;
  bool is_selected1 = false;
  bool is_selected2 = false;
  bool is_selected3 = false;

  //const ThirdScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(image: AssetImage("assets/images/Group (1).png")),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "AliceCare",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    //color: Colors.white,
                    width: 320,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.transparent,
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xffD0D5DD),
                                width: 1,
                              )),
                          hintText: " Articles,Video,Audio,More,....",
                          filled: true,
                          fillColor: Colors.white,
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            color: Color(0xff667085),
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xff667085),
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ChoiceChip(
                      label: Text(
                        'Discover',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff667085)),
                      ),
                      side: BorderSide(color: Colors.black12),
                      selected: is_selected,
                      selectedColor: Color(0xffD6BBFB),
                      onSelected: (newBoolValue) {
                        is_selected = newBoolValue;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: Text(
                        'News',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color(0xff667085)),
                      ),
                      side: BorderSide(color: Colors.black12),
                      selected: is_selected1,
                      selectedColor: Color(0xffD6BBFB),
                      onSelected: (newBoolValue) {
                        is_selected1 = newBoolValue;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: Text('Most Viewed',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff667085))),
                      side: BorderSide(color: Colors.black12),
                      selected: is_selected2,
                      selectedColor: Color(0xffD6BBFB),
                      onSelected: (newBoolValue) {
                        is_selected2 = newBoolValue;
                        setState(() {});
                      },
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ChoiceChip(
                      label: Text('Saved',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color(0xff667085))),
                      side: BorderSide(color: Colors.black12),
                      selected: is_selected3,
                      selectedColor: Color(0xffD6BBFB),
                      onSelected: (newBoolValue) {
                        is_selected3 = newBoolValue;
                        setState(() {});
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  children: [
                    Text('Hot topics',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        )),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color(0xff5925DC)),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Color(0xff5925DC),
                      size: 20,
                    )
                  ],
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Image(
                          image: AssetImage('assets/images/Frame 3466530.png')),
                      SizedBox(
                        width: 10,
                      ),
                      Image(
                          image: AssetImage(
                              'assets/images/Frame 3466530 (2).png')),

                    ],
                  ),
                ),
              ),
             /* Row(
                children: [
                  Container(
                    width: 362,
                    height: 160,
                    decoration: BoxDecoration(
                        image: DecorationImage(fit: BoxFit.cover,image: AssetImage(
                            'assets/images/Frame 3466530.png'))
                    ),
                    child: Row(
                      children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                      children: [
                      Container(
                      width: 87,
                        height: 23,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xffFEF0C7)

                        ),
                        child: Center(child: Text("self-care", style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 12),)),

                      ),
                      Text(
                          "10 Easy Self-Care Ideas That Can Help Boost Your Health",
                          style: TextStyle(fontWeight: FontWeight.w600,
                          fontSize: 16),),
                ],
              ),
                    )
            ],
          ),

        )
        ],
      ),*/
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text('Get Tips',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ))
          ],
        ),
      ),
      Container(
        decoration: BoxDecoration(
          color: Color(0xffEAECF5),
          borderRadius: BorderRadius.circular(15),
        ),
        width: 326,
        height: 196,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image(
                      image: AssetImage(
                          'assets/images/Doctor-PNG-Images 1.png'))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Connect with doctors &\n get suggestions",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    "Connect now and get\n expert insights",
                    style: TextStyle(
                        fontSize: 14, fontWeight: FontWeight.w400),
                  ),
                  Container(
                    height: 42,
                    width: 150,
                    //color:Color(0xff7F56D9) ,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Color(0xff7F56D9),
                    ),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          // shape: OvalBorder(),
                          primary: Color(0xff7F56D9),
                        ),
                        onPressed: () {},
                        child: Text(
                          "View detail",
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14),
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Text('Cycle Phases and Period',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                )),
            SizedBox(
              width: 50,
            ),
            Text(
              "See all",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  color: Color(0xff5925DC)),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: Color(0xff5925DC),
              size: 20,
            )
          ],
        ),
      ),
      ],
    ),
    ),
    bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(
    icon: InkWell(
    onTap: () {
    Navigator.pushNamed(context, FirstScreen.routename);
    },
    child: ImageIcon(
    AssetImage('assets/images/calendar (2).png'),
    color: Color(0xff475467),
    )),
    label: "Today"),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/grid-01 (1).png'),
    color: Color(0xff475467)),
    label: "Insights"),
    BottomNavigationBarItem(
    icon: ImageIcon(AssetImage('assets/images/bar-chart-07.png'),
    color: Color(0xff475467)),
    label: 'Chat'),
    ],
    selectedItemColor: Color(0xff6941C6),
    currentIndex: index,
    onTap: (value) {
    index = value;
    setState(() {});
    },
    )
    ,
    )
    ,
    );
  }
}

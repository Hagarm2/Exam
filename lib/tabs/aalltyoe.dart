import 'package:flutter/material.dart';

class AllType extends StatelessWidget {
  const AllType({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.only(top:15),
          child: SingleChildScrollView(
            child: Column(

              children: [
                Container(
                  color: Color(0xffEAECF5),
                  width: 330,
                  height: 174,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              height: 36,
                              width: 86,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,


                              ),
                              child: Center(child: Text('7 days',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                            ),
                            Text('Morning Yoga',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                            Text('Improve mental focus.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                            Row(
                              children: [
                                Icon(Icons.access_time_sharp),
                                Text('30 mins',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),

                              ],
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/[removal 2.png'))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  color: Color(0xffEAECF5),
                  width: 330,
                  height: 174,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left:15,top: 15,bottom: 15),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              height: 36,
                              width: 86,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,


                              ),
                              child: Center(child: Text('3 days',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                            ),
                            Text('Plank Exercise',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                            Text('Improve posture and stability.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                            Row(
                              children: [
                                Icon(Icons.access_time_sharp),
                                Text('30 mins',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),

                              ],
                            )


                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment:CrossAxisAlignment.start ,
                        children: [
                          Image(image: AssetImage('assets/images/pngwing 1.png',),width: 150,)
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  color: Color(0xffEAECF5),
                  width: 330,
                  height: 174,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Container(
                              height: 36,
                              width: 86,
                              decoration:BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,


                              ),
                              child: Center(child: Text('7 days',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)),
                            ),
                            Text('Morning Yoga',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                            Text('Improve mental focus.',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                            Row(
                              children: [
                                Icon(Icons.access_time_sharp),
                                Text('30 mins',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),

                              ],
                            )


                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image(image: AssetImage('assets/images/[removal 2.png'))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
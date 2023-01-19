import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'month_detail_page.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  void changeIndex(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple.shade700,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey.shade400,
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          iconSize: 4.h,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: changeIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: "",
                backgroundColor: Colors.deepPurple.shade700),
            BottomNavigationBarItem(icon: Icon(Icons.file_present), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none), label: ""),
          ],
        ),
        body: Container(
          height: 100.h,
          width: 100.w,
          padding: EdgeInsets.only(left:3.h,right: 3.h,top: 3.h,bottom: 1.h),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                  colors: [
                Colors.deepPurple.shade700.withOpacity(0.7),
                Colors.deepPurple.shade700
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu_outlined,
                    color: Colors.white,
                    size: 4.h,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 3.h,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("lib/images/men1.jpg"),
                      radius: 2.8.h,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              Text(
                "Hi Ghulam",
                style: TextStyle(
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                    color: Colors.white),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "6 Tasks are pending",
                style: TextStyle(fontSize: 14.sp, color: Colors.white70),
              ),
              SizedBox(
                height: 4.h,
              ),
              Container(
                height: 15.h,
                width: 90.w,
                decoration: BoxDecoration(
                    color: Colors.deepPurple.shade400,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.deepPurple.shade600.withOpacity(0.5),
                          blurRadius: 10)
                    ]),
                padding: EdgeInsets.only(left: 20, top: 15, bottom: 15,right: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mobile App Design",
                      style: TextStyle(
                          fontSize: 15.5.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    Text(
                      "Mike and Anita",
                      style: TextStyle(fontSize: 12.sp, color: Colors.white70),
                    ),
                    SizedBox(height: 1.h,),
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 2.5.h,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("lib/images/girl1.jpg"),
                            radius: 2.3.h,
                          ),
                        ),
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 2.5.h,
                          child: CircleAvatar(
                            backgroundImage: AssetImage("lib/images/girl2.jpg"),
                            radius: 2.3.h,
                          ),
                        ),
                        Expanded(child: Container()),
                        Text("New",style: TextStyle(fontSize: 14.sp,color: Colors.white60),)
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Monthly Review",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey.shade200),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue.shade200),
                    child: IconButton(onPressed: (){
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>MonthDetailPage()));
                    }, icon: Icon(
                      Icons.calendar_today_outlined,
                      size: 5.w,
                      color: Colors.white70,
                    )),
                  )
                ],
              ),
              SizedBox(height: 2.5.h,),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 20.h,
                            width: 41.w,
                            decoration: BoxDecoration(
                              color: Colors.deepPurple.shade400,
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("22",style: TextStyle(fontSize: 23.sp,color: Colors.white,fontWeight: FontWeight.w600),),
                                SizedBox(height: 1.h,),
                                Text("Done",style: TextStyle(fontSize: 14.sp,color: Colors.white70),)
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h,),
                          Container(
                            height: 15.h,
                            width: 41.w,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.shade400,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("10",style: TextStyle(fontSize: 23.sp,color: Colors.white,fontWeight: FontWeight.w600),),
                                SizedBox(height: 1.h,),
                                Text("Ongoing",style: TextStyle(fontSize: 14.sp,color: Colors.white70),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 2.w,),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Container(
                            height: 15.h,
                            width: 41.w,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.shade400,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("7",style: TextStyle(fontSize: 23.sp,color: Colors.white,fontWeight: FontWeight.w600),),
                                SizedBox(height: 1.h,),
                                Text("in progress",style: TextStyle(fontSize: 14.sp,color: Colors.white70),)
                              ],
                            ),
                          ),
                          SizedBox(height: 2.h,),
                          Container(
                            height: 20.h,
                            width: 41.w,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.shade400,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("12",style: TextStyle(fontSize: 23.sp,color: Colors.white,fontWeight: FontWeight.w600),),
                                SizedBox(height: 1.h,),
                                Text("Waiting for reviews",style: TextStyle(fontSize: 14.sp,color: Colors.white70),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

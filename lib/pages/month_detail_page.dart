import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';

class MonthDetailPage extends StatefulWidget {
  const MonthDetailPage({Key? key}) : super(key: key);

  @override
  State<MonthDetailPage> createState() => _MonthDetailPageState();
}

class _MonthDetailPageState extends State<MonthDetailPage> {
  int _index = 0;
  List date = [
    ["12", "Wed"],
    ["13", "Thu"],
    ["14", "Fri"],
    ["15", "Sat"],
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.blue.shade50,
          padding: EdgeInsets.all(2.5.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.black26, width: 2)),
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(
                          Icons.arrow_back,
                          size: 7.w,
                        )),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 3.3.h,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("lib/images/men1.jpg"),
                      radius: 3.h,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 3.h,
              ),
              //month
              Row(
                children: [
                  Icon(
                    Icons.arrow_back,
                    size: 6.w,
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Text(
                    "Mar",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "April",
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple.shade900),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "Mar",
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  SizedBox(
                    width: 3.w,
                  ),
                  Icon(
                    Icons.arrow_forward,
                    size: 6.w,
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              //date list
              SizedBox(
                height: 12.h,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: date.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            _index = index;
                          });
                        },
                        child: Container(
                          height: 12.h,
                          width: 17.w,
                          margin: EdgeInsets.only(right: 7.w),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.blue.shade50, blurRadius: 20)
                              ],
                              color: _index == index
                                  ? Colors.deepPurple.shade900
                                  : Colors.white70),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                date[index][0],
                                style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w800,
                                    color: _index == index
                                        ? Colors.white
                                        : Colors.deepPurple.shade900),
                              ),
                              SizedBox(
                                height: 0.5.h,
                              ),
                              Text(
                                date[index][1],
                                style: TextStyle(
                                    fontSize: 11.sp,
                                    fontWeight: FontWeight.w500,
                                    color: _index == index
                                        ? Colors.grey.shade200
                                        : Colors.deepPurple.shade900),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 2.h,
              ),
              Text(
                "Ongoing",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.deepPurple.shade900),
              ),
              SizedBox(
                height: 2.h,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 10.h,
                        width: 15.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "9 AM",
                              style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                            Text(
                              "11 AM",
                              style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 14.h,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade400,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mobile App Design",
                                style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                "Mike and Anita",
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 2.h,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/images/girl1.jpg"),
                                      radius: 1.8.h,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 2.h,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/images/girl2.jpg"),
                                      radius: 1.8.h,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "9.00 AM- 11.00 AM",
                                    style: TextStyle(
                                        fontSize: 11.5.sp,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "10 AM",
                        style: TextStyle(
                            fontSize: 12.5.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueGrey),
                      ),
                      SizedBox(width: 2.w,),
                      CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 2.5.w,
                        child: CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 1.2.w,
                        ),
                      ),
                      Expanded(
                          child: Divider(
                            thickness: 2,
                            color: Colors.red,
                            indent: 10,
                          )
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10.h,
                        width: 15.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "11 AM",
                              style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                            Text(
                              "12 AM",
                              style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 14.h,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade400,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Software Testing",
                                style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                "Anita and David",
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 2.h,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/images/men2.jpg"),
                                      radius: 1.8.h,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 2.h,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/images/girl2.jpg"),
                                      radius: 1.8.h,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "11.00 AM- 12.00 AM",
                                    style: TextStyle(
                                        fontSize: 11.5.sp,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    children: [
                      Container(
                        height: 10.h,
                        width: 15.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "1 PM",
                              style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                            Text(
                              "2 PM",
                              style: TextStyle(
                                  fontSize: 12.5.sp,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.blueGrey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Expanded(
                        child: Container(
                          height: 14.h,
                          decoration: BoxDecoration(
                              color: Colors.deepPurple.shade400,
                              borderRadius: BorderRadius.circular(20)),
                          padding: EdgeInsets.all(15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Web Developemnt",
                                style: TextStyle(
                                    fontSize: 14.5.sp,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              ),
                              Text(
                                "Mike and Anita",
                                style: TextStyle(
                                    fontSize: 11.5.sp,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 1.5.h,
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 2.h,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/images/girl1.jpg"),
                                      radius: 1.8.h,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: Colors.white,
                                    radius: 2.h,
                                    child: CircleAvatar(
                                      backgroundImage:
                                          AssetImage("lib/images/girl2.jpg"),
                                      radius: 1.8.h,
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Text(
                                    "1.00 PM- 2.00 PM",
                                    style: TextStyle(
                                        fontSize: 11.5.sp,
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

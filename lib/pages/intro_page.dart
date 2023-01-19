import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import 'home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 100.h,
          width: 100.w,
          color: Colors.blue.shade100.withOpacity(0.6),
          child: Column(
            children: [
              //images
              Container(
                margin: EdgeInsets.only(top: 3.h),
                child: Image.asset(
                  "lib/images/front.png",
                  height: 45.h,
                ),
              ),
              SizedBox(
                height: 6.h,
              ),
              //header text
              Container(
                margin: EdgeInsets.only(left: 10.w, right: 10.w),
                child: Text(
                  "Manage your daily tasks",
                  style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.purple.shade900,)
                ),
              ),
              SizedBox(
                height: 2.5.h,
              ),
              //describe text
              Container(
                  margin: EdgeInsets.only(left: 10.w),
                  child: Text(
                    "Team and project management with solution providing app",
                    style: TextStyle(
                        fontSize: 14.5.sp, color: Colors.purple.shade900),
                  )),
              //get started button
              Container(
                margin: EdgeInsets.only(left: 10.w,top: 2.2.h),
                child: Row(
                  children: [
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      child: Container(
                        height: 10.h,
                        width: 16.w,
                        alignment: Alignment.centerRight,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade100,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.shade400.withOpacity(0.2),
                              blurRadius: 05
                            )
                          ]
                        ),
                        child: Text("Get",style: TextStyle(fontSize: 15.5.sp,fontWeight: FontWeight.w600,color: Colors.purple.shade900),),
                      ),
                    ),
                    Text("Started",style: TextStyle(fontSize: 15.5.sp,fontWeight: FontWeight.w600,color: Colors.purple.shade900),)
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

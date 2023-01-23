import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';

class JobsScreen extends StatelessWidget {
  const JobsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: Column(children: [
        Container(
          padding: EdgeInsets.all(15.h),
          color: whiteColor,
          child: Row(
            children: [
              SizedBox(
                width: 60.w,
              ),
              Image.asset(
                icLabel,
                width: 30,
                height: 30.h,
              ),
              Text(
                "My jobs",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: blackColor,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              Image.asset(
                icediting,
                width: 30,
                height: 30.h,
              ),
              Text(
                "Post a jobs",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: blackColor,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: 20.w,
              ),
            ],
          ),
        ),
        SizedBox(height: 15.h),
        Container(
            padding: EdgeInsets.all(15.h),
            color: whiteColor,
            child: Column(children: [
              Row(
                children: [
                  Text(
                    "Recommended for you",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: blackColor,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 30.r,
                      child: Image.asset(icLogo)),
                  SizedBox(
                    width: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "React js",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Turing",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: blackColor,
                        ),
                      ),
                      Text(
                        "United(Remote)",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: btextColor,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Image.asset(icLabel)
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Divider(
                thickness: 1.5.sp,
              ),
              SizedBox(
                width: 20.w,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 30.r,
                      child: Image.asset(icLogo)),
                  SizedBox(
                    width: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Flutter job",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Turing",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: blackColor,
                        ),
                      ),
                      Text(
                        "Pakistan(office)",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: btextColor,
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Image.asset(icLabel)
                ],
              ),
            ])),
      ]),
    );
  }
}

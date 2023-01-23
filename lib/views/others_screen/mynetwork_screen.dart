import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../consts/consts.dart';

class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

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
              Text(
                "Manage my network",
                style: TextStyle(
                    fontSize: 20.sp,
                    color: blueColor,
                    fontWeight: FontWeight.bold),
              ),
              const Spacer(),
              const Icon(
                Icons.arrow_forward_ios,
                color: btextColor,
              )
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Container(
          padding: EdgeInsets.all(15.h),
          color: whiteColor,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Invitations",
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: blueColor,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.arrow_forward_ios,
                    color: btextColor,
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Divider(
                thickness: 1.5.sp,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 40.r,
                      child: Image.asset(icLogo)),
                  SizedBox(
                    width: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jhon wick",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Trainee at Microsoft",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: btextColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Image.asset(
                    iccircle,
                    width: 50.w,
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.check_circle_outline,
                    size: 60.sp,
                    color: blueColor,
                  )
                ],
              ),
              SizedBox(
                height: 40.h,
              ),
              Divider(
                thickness: 1.5.sp,
              ),
              Row(
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 40.r,
                      child: Image.asset(icLogo)),
                  SizedBox(
                    width: 10.h,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Tom",
                        style: TextStyle(
                            fontSize: 20.sp, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "Trainee at Google",
                        style: TextStyle(
                          fontSize: 20.sp,
                          color: btextColor,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 45.w,
                  ),
                  Image.asset(
                    iccircle,
                    width: 50.w,
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(
                    Icons.check_circle_outline,
                    size: 60.sp,
                    color: blueColor,
                  )
                ],
              )
            ],
          ),
        ),
      ]),
    );
  }
}

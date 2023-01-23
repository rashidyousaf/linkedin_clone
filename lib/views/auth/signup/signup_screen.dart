import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/common_widgets/custom_button.dart';
import 'package:linkedin_clon/common_widgets/custom_textfield.dart';
import 'package:linkedin_clon/consts/consts.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({
    super.key,
  });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool? visiable = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 25.h,
            ),
            Row(
              children: [
                Text(
                  "Linked",
                  style: TextStyle(
                      fontSize: 25.sp,
                      fontWeight: FontWeight.bold,
                      color: blueColor),
                ),
                SizedBox(
                  width: 2.w,
                ),
                Image.asset(
                  icLogo,
                  width: 23.w,
                  height: 23.h,
                )
              ],
            ),
            SizedBox(
              height: 40.h,
            ),
            Text(
              "Join LinkedIn",
              style: TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "or",
                  style: TextStyle(color: btextColor, fontSize: 18.sp),
                ),
                SizedBox(
                  width: 5.w,
                ),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/loginscreen');
                  },
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: blueColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
            const CustomTextfield(
              hintText: 'Email or Number*',
            ),
            visiable == true
                ? Column(children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    const CustomTextfield(
                      hintText: 'Password*',
                      icon: true,
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "8 or more characters",
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: btextColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    CustomButton(
                      bgColor: blueColor,
                      title: 'Continue',
                      textColor: whiteColor,
                      borderColor: blueColor,
                    ),
                  ])
                : Column(
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      CustomButton(
                        bgColor: blueColor,
                        title: 'Continue',
                        textColor: whiteColor,
                        borderColor: blueColor,
                        onPress: () {
                          setState(() {
                            visiable = true;
                          });
                        },
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            color: greyColor,
                            width: 180.w,
                            height: 1.h,
                          ),
                          SizedBox(
                            width: 20.w,
                          ),
                          Text(
                            'or',
                            style: TextStyle(fontSize: 18.sp),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            color: greyColor,
                            width: 185.w,
                            height: 1.h,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomButton(
                        icon: icGooglelogo,
                        title: 'Continue with Google',
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      CustomButton(
                        icon: icFacebooklogo,
                        title: 'Continue with Facebook',
                      ),
                    ],
                  )
          ],
        ),
      )),
    );
  }
}

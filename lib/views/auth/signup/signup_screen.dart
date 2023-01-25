import 'dart:ui';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/common_widgets/custom_button.dart';
import 'package:linkedin_clon/common_widgets/custom_textfield.dart';
import 'package:linkedin_clon/consts/consts.dart';

import '../../../common_widgets/wcustom_button.dart';
import '../../../common_widgets/wcustom_textfield.dart';

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
        child: LayoutBuilder(builder: (context, constrains) {
          if (constrains.maxWidth < 768) {
            return Column(
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
                  style:
                      TextStyle(fontSize: 35.sp, fontWeight: FontWeight.w500),
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
            );
          } else {
            return Column(
              children: [
                SizedBox(
                  height: 25.h,
                ),
                Row(
                  children: [
                    Text(
                      "Linked",
                      style: TextStyle(
                          fontSize: 50.sp,
                          fontWeight: FontWeight.bold,
                          color: blueColor),
                    ),
                    SizedBox(
                        width: 10.w,
                        child: Image.asset(
                          icLogo,
                          width: 60.w,
                          height: 60.h,
                        )),
                  ],
                ),
                Text(
                  "Make the most of your professional life",
                  style: TextStyle(color: blackColor, fontSize: 50.sp),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Container(
                  padding: EdgeInsets.only(
                      top: 30.h, left: 10.w, right: 10.w, bottom: 30.h),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.r),
                        topRight: Radius.circular(10.r),
                        bottomLeft: Radius.circular(10.r),
                        bottomRight: Radius.circular(10.r)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  width: 130.w,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      const WCustomTextfield(
                        hintText: 'Email or Number*',
                      ),
                      Column(children: [
                        SizedBox(
                          height: 50.h,
                        ),
                        const WCustomTextfield(
                          hintText: 'Password*',
                          icon: true,
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "By clicking Agree & Join, you agree to the LinkedIn User Agreement, Privacy Policy, and Cookie Policy.",
                            style: TextStyle(),
                          ),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        WcustomButton(
                          bgColor: blueColor,
                          title: 'Agree & Join',
                          textColor: whiteColor,
                          borderColor: blueColor,
                          onPress: (() => Navigator.pushNamed(
                              context, '/bottomnavigation')),
                        ),
                      ]),
                      Column(children: [
                        SizedBox(
                          height: 30.h,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 8.w,
                            ),
                            Container(
                              color: greyColor,
                              width: 35.w,
                              height: 2.h,
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Text(
                              'or',
                              style: TextStyle(fontSize: 20.sp),
                            ),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                              color: greyColor,
                              width: 35.w,
                              height: 2.h,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        SizedBox(
                          height: 60.h,
                          child: WcustomButton(
                            icon: icGooglelogo,
                            title: 'Continue with Google',
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 40.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already on LinkedIn?",
                            style:
                                TextStyle(color: btextColor, fontSize: 22.sp),
                          ),
                          SizedBox(
                            width: 2.w,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/loginscreen');
                            },
                            child: Text(
                              "Sign in",
                              style: TextStyle(
                                  color: blueColor,
                                  fontSize: 25.sp,
                                  fontWeight: FontWeight.w700),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
              ],
            );
          }
        }),
      )),
    );
  }
}

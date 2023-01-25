import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/consts.dart';

import '../../../common_widgets/custom_button.dart';
import '../../../common_widgets/custom_textfield.dart';
import '../../../common_widgets/wcustom_button.dart';
import '../../../common_widgets/wcustom_textfield.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: LayoutBuilder(builder: (context, constraints) {
          if (constraints.maxWidth < 768) {
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
                  "Sign in",
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
                        Navigator.pushNamed(context, '/signupscreen');
                      },
                      child: Text(
                        "Join Linkedin",
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
                Column(children: [
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
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (value) {},
                        ),
                        Text(
                          "Remember me",
                          style: TextStyle(
                            fontSize: 15.sp,
                            color: btextColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Forgot password?",
                      style: TextStyle(
                        fontSize: 15.sp,
                        color: blueColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    bgColor: blueColor,
                    title: 'Continue',
                    textColor: whiteColor,
                    borderColor: blueColor,
                    onPress: (() =>
                        Navigator.pushNamed(context, '/bottomnavigation')),
                  ),
                ]),
                Column(
                  children: [
                    SizedBox(
                      height: 30.h,
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
                      icon: icApplelogo,
                      title: 'Continue with Apple',
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
          }
          // this section for website
          else {
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sign in",
                              style: TextStyle(
                                  fontSize: 60.sp, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Stay updated on your professional world",
                              style:
                                  TextStyle(color: blackColor, fontSize: 20.sp),
                            ),
                          ],
                        ),
                      ),
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
                            "Forgot password?",
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.w600,
                              color: blueColor,
                            ),
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
                          title: 'Continue',
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
                          height: 20.h,
                        ),
                        SizedBox(
                          height: 60.h,
                          child: WcustomButton(
                            icon: icGooglelogo,
                            title: 'Continue with Google',
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        SizedBox(
                          height: 60.h,
                          child: WcustomButton(
                            icon: icApplelogo,
                            title: 'Continue with Apple',
                          ),
                        ),
                      ]),
                    ],
                  ),
                ),
                SizedBox(
                  height: 40.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "New to Linkedin?",
                      style: TextStyle(color: btextColor, fontSize: 22.sp),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/signupscreen');
                      },
                      child: Text(
                        "Join Now",
                        style: TextStyle(
                            color: blueColor,
                            fontSize: 25.sp,
                            fontWeight: FontWeight.w700),
                      ),
                    )
                  ],
                ),
              ],
            );
          }
        }),
      )),
    );
  }
}

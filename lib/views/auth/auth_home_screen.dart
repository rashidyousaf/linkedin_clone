import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/common_widgets/custom_button.dart';
import 'package:linkedin_clon/consts/consts.dart';

class AuthHomeScreen extends StatelessWidget {
  const AuthHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 220.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Linked",
                style: TextStyle(
                    fontSize: 60.sp,
                    fontWeight: FontWeight.bold,
                    color: blueColor),
              ),
              Image.asset(
                icLogo,
                width: 60.w,
                height: 60.h,
              ),
            ],
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            "Join a trusted community of 800M",
            style: TextStyle(
                fontSize: 23.sp,
                fontWeight: FontWeight.w300,
                color: blackColor),
          ),
          Text(
            "professionals",
            style: TextStyle(
                fontSize: 23.sp,
                fontWeight: FontWeight.w300,
                color: blackColor),
          ),
          SizedBox(
            height: 300.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  CustomButton(
                    onPress: () {
                      Navigator.pushNamed(context, '/signupscreen');
                    },
                    bgColor: blueColor,
                    borderColor: blueColor,
                    textColor: whiteColor,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    onPress: () {},
                    icon: icGooglelogo,
                    title: "Sign in with Google",
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomButton(
                    icon: icFacebooklogo,
                    title: "Sign in with Facebook",
                    onPress: () {},
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/loginscreen');
                    },
                    child: Text(
                      "SignIn",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 23.sp,
                          color: blueColor),
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}

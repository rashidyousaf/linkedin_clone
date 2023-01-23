import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';

class CustomButton extends StatelessWidget {
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  String? title;
  final VoidCallback? onPress;
  final String? icon;

  CustomButton(
      {super.key,
      this.title = "Join now",
      this.onPress,
      this.icon,
      this.bgColor = whiteColor,
      this.borderColor = blackColor,
      this.textColor = btextColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 55.h,
      child: ElevatedButton(
          style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(greyColor),
              backgroundColor: MaterialStateProperty.all<Color>(bgColor!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.r),
                      side: BorderSide(color: borderColor!)))),
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon == null
                  ? const SizedBox()
                  : Image.asset(
                      icon!,
                      width: 25.w,
                      height: 25.h,
                    ),
              SizedBox(
                width: 10.w,
              ),
              Text(
                title!,
                style: TextStyle(
                  color: textColor,
                  fontSize: 23.sp,
                ),
              ),
            ],
          )),
    );
  }
}

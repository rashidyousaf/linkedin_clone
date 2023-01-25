import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/consts.dart';

class WcustomButton extends StatelessWidget {
  final Color? bgColor;
  final Color? textColor;
  final Color? borderColor;
  String? title;
  final VoidCallback? onPress;
  final String? icon;
  WcustomButton(
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
      height: 80.h,
      child: ElevatedButton(
          style: ButtonStyle(
              shadowColor: MaterialStateProperty.all(greyColor),
              backgroundColor: MaterialStateProperty.all<Color>(bgColor!),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.r),
                      side: BorderSide(color: borderColor!)))),
          onPressed: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon == null
                  ? const SizedBox()
                  : SizedBox(
                      width: 10.w,
                      child: Image.asset(
                        icon!,
                        width: 30.w,
                        height: 30.h,
                      ),
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

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/consts.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, this.hintText, this.icon = false});
  final String? hintText;
  final bool? icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: blackColor,
      cursorHeight: 25.h,
      decoration: InputDecoration(
          suffixIcon: Visibility(
            visible: icon!,
            child: Icon(
              Icons.visibility,
              color: btextColor,
              size: 25.sp,
            ),
          ),
          fillColor: blackColor,
          focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: blackColor,
            width: 1.w,
          )),
          enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(
            color: blackColor,
          )),
          labelText: hintText,
          labelStyle: TextStyle(fontSize: 20.sp, color: btextColor)),
    );
  }
}

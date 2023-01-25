import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/consts.dart';

class WCustomTextfield extends StatelessWidget {
  final String? hintText;
  final bool? icon;
  const WCustomTextfield({super.key, this.hintText, this.icon = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: blackColor,
      cursorHeight: 35.h,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: blackColor, width: 2.0),
          ),
          suffixIcon: Visibility(
            visible: icon!,
            child: Icon(
              Icons.visibility,
              color: btextColor,
              size: 25.sp,
            ),
          ),
          fillColor: blackColor,
          // focusedBorder:
          //     const UnderlineInputBorder(borderSide: BorderSide.none),
          // enabledBorder:
          //     const UnderlineInputBorder(borderSide: BorderSide.none),
          labelText: hintText,
          labelStyle: TextStyle(fontSize: 20.sp, color: btextColor)),
    );
  }
}

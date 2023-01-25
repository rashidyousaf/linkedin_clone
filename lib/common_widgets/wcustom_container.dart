import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/consts.dart';

class WCustomContainer extends StatelessWidget {
  final Widget? child;
  const WCustomContainer({super.key, this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: child,
    );
  }
}

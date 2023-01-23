import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/common_widgets/post_widget.dart';

import '../../consts/consts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15.h),
            // post container
            Container(color: whiteColor, child: const PostWidegt()),
            SizedBox(height: 15.h),
            // post container
            Container(color: whiteColor, child: const PostWidegt()),
            SizedBox(height: 15.h),
            // post container
            Container(color: whiteColor, child: const PostWidegt()),
            SizedBox(height: 15.h),
            // post container
            Container(color: whiteColor, child: const PostWidegt()),
            SizedBox(height: 15.h),
            // post container
            Container(color: whiteColor, child: const PostWidegt()),
            SizedBox(height: 15.h),
            // post container
            Container(color: whiteColor, child: const PostWidegt()),
            SizedBox(height: 15.h),
          ],
        ),
      ),
    );
  }
}

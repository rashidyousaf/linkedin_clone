import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';

class PostWidegt extends StatelessWidget {
  const PostWidegt({super.key});

  get whiteColor => null;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 750.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 20.h, right: 15.w),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 60.h,
                  height: 60.h,
                  child: Image.asset(
                    icLogo,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Great Global Trade",
                      style: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    const Text(
                      "16,992 followers",
                      style: TextStyle(
                        color: btextColor,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                const Icon(Icons.more_vert)
              ],
            ),
          ),
          SizedBox(
            height: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, right: 15.w),
            child: const Text(
              "interesed in finding out how working with innovative companies across the commonwealth",
              style: TextStyle(
                color: blackColor,
              ),
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          SizedBox(
            height: 400.h,
            width: double.maxFinite,
            child: Image.network(
              'https://images.pexels.com/photos/14680409/pexels-photo-14680409.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              fit: BoxFit.fill,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.w, top: 10.h, right: 15.w),
            child: Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: 300.w,
                    child: Text(
                      "Great partneships achieve common objectives",
                      style: TextStyle(
                          color: blackColor,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 30.w,
                  ),
                  Text(
                    "Learn more",
                    style: TextStyle(
                        color: blueColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(
                height: 30.h,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.w,
                  ),
                  SizedBox(
                    width: 120.w,
                    child: const Text(
                      "2,424",
                      style: TextStyle(
                        color: btextColor,
                      ),
                    ),
                  ),
                  const Spacer(),
                  const Text(
                    "41 comments . 41 reposts",
                    style: TextStyle(
                      color: btextColor,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Divider(
                thickness: 1.5.h,
              ),
            ]),
          ),
          SizedBox(
            height: 10.h,
          ),
          Row(
            children: [
              SizedBox(
                width: 30.w,
              ),
              Column(
                children: [
                  Icon(
                    Icons.thumb_up_off_alt,
                    color: btextColor,
                    size: 30.sp,
                  ),
                  Text(
                    "Like",
                    style: TextStyle(
                        color: btextColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                width: 60.w,
              ),
              Column(
                children: [
                  Icon(
                    Icons.comment,
                    color: btextColor,
                    size: 30.sp,
                  ),
                  Text(
                    "comment",
                    style: TextStyle(
                        color: btextColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                width: 60.w,
              ),
              Column(
                children: [
                  Icon(
                    Icons.post_add,
                    color: btextColor,
                    size: 30.sp,
                  ),
                  Text(
                    "Repost",
                    style: TextStyle(
                        color: btextColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                width: 60.w,
              ),
              Column(
                children: [
                  Icon(
                    Icons.send,
                    color: btextColor,
                    size: 30.sp,
                  ),
                  Text(
                    "Send",
                    style: TextStyle(
                        color: btextColor,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

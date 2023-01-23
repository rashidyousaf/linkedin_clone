import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 25.w,
        top: 20.h,
        bottom: 20.h,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 55.w,
            height: 55.h,
            child: Image.asset(
              icLogo,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            width: 300.w,
            child: const Text(
                "Meainingful work is not limited to certain roles. Here,s ho to make the most of any job."),
          ),
          SizedBox(
            width: 20.w,
          ),
          Column(
            children: const [
              Text(
                '9h',
                style: TextStyle(color: btextColor),
              ),
              Icon(Icons.more_vert)
            ],
          )
        ],
      ),
    );
  }
}

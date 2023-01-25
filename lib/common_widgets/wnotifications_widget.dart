import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../consts/consts.dart';

class WNotificationsWidget extends StatelessWidget {
  const WNotificationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 5.w,
        top: 20.h,
        bottom: 10.h,
      ),
      child: Row(
        children: [
          SizedBox(
            width: 20.w,
            height: 80.h,
            child: Image.asset(
              icLogo,
              fit: BoxFit.fill,
            ),
          ),
          SizedBox(
            width: 10.w,
          ),
          SizedBox(
            width: 180.w,
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

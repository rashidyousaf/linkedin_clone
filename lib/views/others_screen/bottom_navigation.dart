import 'dart:js_util';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/common_widgets/post_widget.dart';
import 'package:linkedin_clon/common_widgets/wcustom_button.dart';
import 'package:linkedin_clon/common_widgets/wcustom_container.dart';
import 'package:linkedin_clon/common_widgets/wcustom_textfield.dart';
import 'package:linkedin_clon/common_widgets/wpost_widget.dart';
import 'package:linkedin_clon/consts/consts.dart';
import 'package:linkedin_clon/views/others_screen/home_screen.dart';
import 'package:linkedin_clon/views/others_screen/jobs_screen.dart';
import 'package:linkedin_clon/views/others_screen/mynetwork_screen.dart';
import 'package:linkedin_clon/views/others_screen/notifications_screen.dart';
import 'package:linkedin_clon/views/others_screen/post_screen.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation>
    with TickerProviderStateMixin {
  int _selectedIndex = 0;
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NetworkScreen(),
    PostScreen(),
    NotificationsScreen(),
    JobsScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 5, vsync: this);
    return LayoutBuilder(builder: (context, constrains) {
      if (constrains.maxWidth < 768) {
        return Scaffold(
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: whiteColor,
            elevation: 0,
            leading: InkWell(
              onTap: () => Drawer(),
              child: const Icon(
                Icons.person,
                color: blackColor,
              ),
            ),
            title: Row(
              children: [
                SizedBox(
                    width: 320.w,
                    height: 40.h,
                    child: TextField(
                      cursorColor: greyColor,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 13.h, horizontal: 10.w),
                          border: InputBorder.none,
                          fillColor: white2Color,
                          filled: true,
                          hintText: "Search"),
                    )),
                SizedBox(
                  width: 18.w,
                ),
                const Icon(
                  Icons.message,
                  color: blackColor,
                )
              ],
            ),
          ),
          body: Center(
            child: _widgetOptions.elementAt(_selectedIndex),
          ),
          bottomNavigationBar: BottomNavigationBar(
            showUnselectedLabels: true,
            unselectedLabelStyle: const TextStyle(color: btextColor),
            unselectedItemColor: btextColor,
            elevation: 1,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.group),
                label: 'My Network',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.post_add),
                label: 'Post',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications),
                label: 'Notifications',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.badge),
                label: 'Jobs',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: blackColor,
            onTap: _onItemTapped,
          ),
        );
      } else {
        return Scaffold(
            appBar: AppBar(
              backgroundColor: whiteColor,
              elevation: 0,
              title: Row(
                children: [
                  SizedBox(
                    width: 50,
                    child: Image.asset(
                      icLogo,
                      width: 60.w,
                      height: 60.h,
                    ),
                  ),
                  SizedBox(
                      width: 100.w,
                      height: 55.h,
                      child: TextField(
                        cursorColor: greyColor,
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.only(bottom: 30.h, left: 5.w),
                            border: InputBorder.none,
                            fillColor: white2Color,
                            filled: true,
                            hintText: "Search"),
                      )),
                  SizedBox(
                    width: 50.w,
                  ),
                  SizedBox(
                    width: 180.w,
                    child: TabBar(
                      indicatorColor: blackColor,
                      unselectedLabelColor: btextColor,
                      labelColor: blackColor,
                      controller: tabController,
                      tabs: [
                        Tab(
                          child: Column(
                            children: [
                              Icon(
                                Icons.home,
                                size: 50.sp,
                              ),
                              Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Column(
                            children: [
                              Icon(
                                Icons.group,
                                size: 50.sp,
                              ),
                              Text(
                                "My Network",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Column(
                            children: [
                              Icon(
                                Icons.badge,
                                size: 50.sp,
                              ),
                              Text(
                                "Jobs",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Column(
                            children: [
                              Icon(
                                Icons.message,
                                size: 50.sp,
                              ),
                              Text(
                                "Messaging",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Tab(
                          child: Column(
                            children: [
                              Icon(
                                Icons.notifications,
                                size: 50.sp,
                              ),
                              Text(
                                "Notifications",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.person,
                        color: btextColor,
                        size: 40.sp,
                      ),
                      Row(
                        children: [
                          Text(
                            "Me",
                            style:
                                TextStyle(color: btextColor, fontSize: 20.sp),
                          ),
                          const Icon(
                            Icons.arrow_drop_down,
                            color: blackColor,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            body: TabBarView(controller: tabController, children: [
              // Home Portion
              Container(
                height: double.maxFinite,
                width: double.maxFinite,
                color: wbgColor,
                child: SingleChildScrollView(
                    child: Padding(
                  padding: EdgeInsets.only(top: 30.h, left: 25.w, right: 25.w),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            width: 80.w,
                            height: 550.h,
                            child: WCustomContainer(
                              child: Column(
                                children: [
                                  Stack(
                                    clipBehavior: Clip.none,
                                    children: [
                                      Container(
                                        height: 90.h,
                                        color: greyColor,
                                        width: double.maxFinite,
                                      ),
                                      Positioned(
                                          left: 27.w,
                                          top: 30.h,
                                          child: CircleAvatar(
                                            backgroundColor: white2Color,
                                            maxRadius: 60.r,
                                            child: Icon(Icons.person),
                                          ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 90.h,
                                  ),
                                  Text(
                                    "Jhon Eleay",
                                    style: TextStyle(
                                        fontSize: 23.sp,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  SizedBox(
                                    height: 20.h,
                                  ),
                                  SizedBox(
                                    width: 50.w,
                                    child: Text(
                                      "Mobile Application | Flutter Developer",
                                      style: TextStyle(
                                          fontSize: 18.sp, color: btextColor),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Divider(),
                                  SizedBox(
                                    height: 25.h,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 15.h,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Connections",
                                            style: TextStyle(
                                                color: btextColor,
                                                fontSize: 20.sp),
                                          ),
                                          Text(
                                            "Grow your network",
                                            style: TextStyle(
                                                color: blackColor,
                                                fontSize: 20.sp),
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        "4",
                                        style: TextStyle(
                                            color: blueColor, fontSize: 20.sp),
                                      ),
                                      SizedBox(
                                        width: 15.h,
                                      ),
                                    ],
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    width: 15.h,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 3.w),
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Accss exclusive tools & insights",
                                            style: TextStyle(fontSize: 18.sp),
                                          ),
                                          SizedBox(
                                            width: 10.h,
                                          ),
                                          Text(
                                            "Try Premium for free",
                                            style: TextStyle(
                                                color: blackColor,
                                                fontSize: 22.sp),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                  const Divider(),
                                  SizedBox(
                                    width: 15.h,
                                  ),
                                  Text(
                                    "My items",
                                    style: TextStyle(
                                        color: blackColor, fontSize: 20.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          SizedBox(
                            width: 80.w,
                            height: 260.h,
                            child: WCustomContainer(
                              child: Padding(
                                padding: EdgeInsets.only(left: 3.w, top: 20.h),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Groups",
                                      style: TextStyle(
                                          color: blueColor,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Events",
                                      style: TextStyle(
                                          color: blueColor,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    Text(
                                      "Followed Hashtags",
                                      style: TextStyle(
                                          color: blueColor,
                                          fontSize: 22.sp,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      height: 20.h,
                                    ),
                                    const Divider(),
                                    SizedBox(
                                      height: 15.h,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Discover more",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            color: btextColor,
                                            fontSize: 25.sp),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      // center Column
                      SizedBox(
                        width: 10.w,
                      ),
                      Column(
                        children: [
                          SizedBox(
                            width: 200.w,
                            height: 200.h,
                            child: WCustomContainer(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 8.w, vertical: 15.h),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.person,
                                          size: 60.sp,
                                        ),
                                        SizedBox(
                                          width: 5.w,
                                        ),
                                        SizedBox(
                                            width: 160.w,
                                            child: const WCustomTextfield())
                                      ],
                                    ),
                                    SizedBox(
                                      height: 30.h,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.image,
                                          size: 40.sp,
                                          color: blueColor,
                                        ),
                                        SizedBox(
                                          width: 15.h,
                                        ),
                                        Text(
                                          "Photos",
                                          style: TextStyle(
                                              color: btextColor,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Icon(
                                          Icons.play_circle,
                                          size: 40.sp,
                                          color: Colors.green,
                                        ),
                                        SizedBox(
                                          width: 15.h,
                                        ),
                                        Text(
                                          "Video",
                                          style: TextStyle(
                                              color: btextColor,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Icon(
                                          Icons.calendar_month,
                                          size: 40.sp,
                                          color: Colors.orange,
                                        ),
                                        SizedBox(
                                          width: 15.h,
                                        ),
                                        Text(
                                          "Event",
                                          style: TextStyle(
                                              color: btextColor,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          width: 20.w,
                                        ),
                                        Icon(
                                          Icons.article,
                                          size: 40.sp,
                                          color: Colors.orange,
                                        ),
                                        SizedBox(
                                          width: 15.h,
                                        ),
                                        Text(
                                          "Write article",
                                          style: TextStyle(
                                              color: btextColor,
                                              fontSize: 22.sp,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          // post section

                          SizedBox(
                            height: 20.h,
                          ),

                          SizedBox(
                            width: 200.w,
                            child: Column(
                              children: [
                                const WCustomContainer(child: WPostWidget()),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const WCustomContainer(child: WPostWidget()),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const WCustomContainer(child: WPostWidget()),
                                SizedBox(
                                  height: 20.h,
                                ),
                                const WCustomContainer(child: WPostWidget()),
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      // last portion
                      Column(
                        children: [
                          SizedBox(
                            width: 100.w,
                            height: 500.h,
                            child: WCustomContainer(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.network(
                                'https://images.pexels.com/photos/15094640/pexels-photo-15094640.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                fit: BoxFit.fill,
                              ),
                            )),
                          )
                        ],
                      )
                    ],
                  ),
                )),
              ),
              Container(
                color: white2Color,
              ),
              Container(
                color: blueColor,
              ),
              Container(
                color: blackColor,
              ),
              Container(
                color: greyColor,
              ),
            ]));
      }
    });
  }
}

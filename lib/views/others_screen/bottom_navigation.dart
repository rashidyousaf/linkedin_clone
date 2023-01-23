import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:linkedin_clon/consts/consts.dart';
import 'package:linkedin_clon/controllers/navigation_model.dart';
import 'package:linkedin_clon/views/others_screen/home_screen.dart';
import 'package:linkedin_clon/views/others_screen/jobs_screen.dart';
import 'package:linkedin_clon/views/others_screen/mynetwork_screen.dart';
import 'package:linkedin_clon/views/others_screen/notifications_screen.dart';
import 'package:linkedin_clon/views/others_screen/post_screen.dart';
import 'package:provider/provider.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
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
  }
}

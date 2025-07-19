import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:to_do_list_provider/common_widgets/color_extension.dart';
import 'package:to_do_list_provider/screens/Index_screens/Tabs_screens/celender_tab_screen.dart';
import 'package:to_do_list_provider/screens/Index_screens/Tabs_screens/focuse_tab_screen.dart';
import 'package:to_do_list_provider/screens/Index_screens/Tabs_screens/home_tab_screen.dart';
import 'package:to_do_list_provider/screens/Index_screens/Tabs_screens/profile_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

void _showBottomSheet(BuildContext context) {
  double sizeWidth = MediaQuery.of(context).size.width;
  double sizeheight = MediaQuery.of(context).size.height;
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        width: sizeWidth * 1,
        decoration: BoxDecoration(
          color: TColor.primary,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Add Task',
                style: TextStyle(color: TColor.primaryText, fontSize: 25),
              ),
              TextField(
                decoration: InputDecoration(
                  hint: Text(
                    'Enter your task',
                    style: TextStyle(color: TColor.primaryText, fontSize: 18),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: TColor.primaryText),
                  ),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  hint: Text(
                    'Description',
                    style: TextStyle(color: TColor.primaryText, fontSize: 18),
                  ),
                  border: OutlineInputBorder(borderSide: BorderSide.none),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: TColor.primary,
                              content: Container(
                                width: sizeWidth * 1,

                                height: sizeheight * .45,
                                child: TableCalendar(
                                  headerStyle: HeaderStyle(
                                    titleTextStyle: TextStyle(
                                      color: TColor.primaryText,
                                      fontSize: 22,
                                    ),
                                    leftChevronIcon: Icon(
                                      Icons.arrow_back_ios,
                                      color: TColor.primaryText,
                                    ),
                                    rightChevronIcon: Icon(
                                      Icons.arrow_forward_ios,
                                      color: TColor.primaryText,
                                    ),
                                    formatButtonVisible: false,
                                    titleCentered: true,
                                  ),

                                  focusedDay: DateTime.now(),
                                  firstDay: DateTime.utc(2010, 10, 16),
                                  lastDay: DateTime.utc(2030, 3, 14),
                                  calendarFormat: CalendarFormat.month,
                                  calendarStyle: CalendarStyle(
                                    defaultDecoration: BoxDecoration(
                                      color: TColor.primaryTextBackground,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    defaultTextStyle: TextStyle(
                                      color: TColor.primaryText,
                                    ),
                                    weekendDecoration: BoxDecoration(
                                      color: TColor.primaryTextBackground,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    weekendTextStyle: TextStyle(
                                      color: TColor.primaryText,
                                    ),
                                    todayDecoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: TColor.secondaryText,
                                    ),
                                  ),
                                  daysOfWeekStyle: DaysOfWeekStyle(
                                    weekdayStyle: TextStyle(
                                      color: TColor.primaryText,
                                    ),
                                    weekendStyle: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                        icon: Icon(
                          Icons.timer_outlined,
                          color: TColor.primaryText,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          _showClock(context);
                        },
                        icon: Image.asset(
                          'assets/tag_icon.png',
                          color: TColor.primaryText,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/flag_icon.png',
                          color: TColor.primaryText,
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/send_icon.png'),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}

void _showClock(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => Theme(
      data: Theme.of(context).copyWith(
        timePickerTheme: TimePickerThemeData(
          backgroundColor: TColor.primary,
          entryModeIconColor: TColor.primaryText,
          dayPeriodColor: TColor.primaryTextBackground,
          dayPeriodBorderSide: BorderSide.none,
          dayPeriodTextColor: TColor.primaryText,
          hourMinuteColor: TColor.primaryTextBackground,
          hourMinuteTextColor: TColor.primaryText,
          helpTextStyle: TextStyle(fontSize: 22, color: TColor.primaryText),
        ),
      ),
      child: TimePickerDialog(
        helpText: 'Choose Time',

        initialTime: TimeOfDay(
          hour: DateTime.now().hour,
          minute: DateTime.now().minute,
        ),
      ),
    ),
  );
}

void _showCalender(BuildContext context) {
  double sizeWidth = MediaQuery.of(context).size.width;
  double sizeheight = MediaQuery.of(context).size.height;
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      backgroundColor: TColor.primary,
      content: Container(
        width: sizeWidth * 1,

        height: sizeheight * .45,
        child: TableCalendar(
          headerStyle: HeaderStyle(
            titleTextStyle: TextStyle(color: TColor.primaryText, fontSize: 22),
            leftChevronIcon: Icon(
              Icons.arrow_back_ios,
              color: TColor.primaryText,
            ),
            rightChevronIcon: Icon(
              Icons.arrow_forward_ios,
              color: TColor.primaryText,
            ),
            formatButtonVisible: false,
            titleCentered: true,
          ),

          focusedDay: DateTime.now(),
          firstDay: DateTime.utc(2010, 10, 16),
          lastDay: DateTime.utc(2030, 3, 14),
          calendarFormat: CalendarFormat.month,
          calendarStyle: CalendarStyle(
            defaultDecoration: BoxDecoration(
              color: TColor.primaryTextBackground,
              borderRadius: BorderRadius.circular(8),
            ),
            defaultTextStyle: TextStyle(color: TColor.primaryText),
            weekendDecoration: BoxDecoration(
              color: TColor.primaryTextBackground,
              borderRadius: BorderRadius.circular(8),
            ),
            weekendTextStyle: TextStyle(color: TColor.primaryText),
            todayDecoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: TColor.secondaryText,
            ),
          ),
          daysOfWeekStyle: DaysOfWeekStyle(
            weekdayStyle: TextStyle(color: TColor.primaryText),
            weekendStyle: TextStyle(color: Colors.red),
          ),
        ),
      ),
    ),
  );
}

void _showTaskPriority(BuildContext context) {
  double sizeWidth = MediaQuery.of(context).size.width;
  double sizeheight = MediaQuery.of(context).size.height;
  showDialog(
    context: context,
    builder: (context) => Dialog(
      backgroundColor: TColor.primary,
      child: Container(width: sizeWidth * 1, height: sizeheight * .5),
    ),
  );
}

class _HomeScreenState extends State<HomeScreen> {
  late List<String> homeTask = [];
  late List<String> celenderTask = [];
  late List<String> FocusTask = [];
  List<Widget> get tabScreens => [
    HomeTabScreen(Tasks: homeTask),
    CelenderTabScreen(celenderTask: celenderTask),
    FocuseTabScreen(),
    ProfileTabScreen(),
  ];
  int selected = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // _showBottomSheet(context);
      _showTaskPriority(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    print('object');
    return SafeArea(
      child: Scaffold(
        drawer: Container(width: 200, color: Colors.white),
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Image.asset('assets/menu_icon.png'),
            ),
          ),
          title: Text('Index'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 35,
                backgroundImage: AssetImage('assets/profile_image.png'),
              ),
            ),
          ],
        ),
        body: tabScreens[selected],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff363636),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: TColor.secondaryText,
          unselectedItemColor: TColor.primaryText,
          currentIndex: selected,
          onTap: (index) {
            // here use provider or valuenotifire
            setState(() {
              selected = index;
            });
          },

          items: [
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/index.png',
                height: 24,
                color: selected == 0 ? TColor.secondaryText : Colors.white,
              ),
              label: "Index",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/calendar.png',
                height: 24,
                color: selected == 1 ? TColor.secondaryText : Colors.white,
              ),
              label: "Celender",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/clock.png',
                height: 24,
                color: selected == 2 ? TColor.secondaryText : Colors.white,
              ),
              label: "Focuse",
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile_icon.png',
                height: 24,
                color: selected == 3 ? TColor.secondaryText : Colors.white,
              ),
              label: "Profile",
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              if (selected == 0) {
                _showBottomSheet(context);
              } else if (selected == 1) {
                celenderTask.add('value1');
              } else if (selected == 2) {
                FocusTask.add('value2');
              }
            });
          },
          backgroundColor: TColor.secondaryText,
          child: Icon(Icons.add, color: Colors.white),
          shape: CircleBorder(),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}

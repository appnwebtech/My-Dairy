import 'package:get/get.dart';
import 'package:mydiary_dev/screens/allmeetingschedulescreen.dart';
import 'package:mydiary_dev/screens/allnotesscreen.dart';
import 'package:mydiary_dev/screens/editingnotesscreen.dart';
import 'package:mydiary_dev/screens/facelockscreen.dart';
import 'package:mydiary_dev/screens/fingerprintscreen.dart';
import 'package:mydiary_dev/screens/homescreen.dart';
import 'package:mydiary_dev/screens/profilescreen.dart';

import '../screens/chatboxscreen.dart';
import '../screens/chattingscreen.dart';
import '../screens/editingmeetingscreen.dart';
import '../screens/login_screen.dart';
import '../screens/meetingschedulescreen.dart';
import '../screens/notesscreen.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: '/', page: () => LoginScreen()),
    GetPage(name: '/fingerprint', page: () => FingerPrintScreen()),
    GetPage(name: '/facelock', page: ()=> FaceLockScreen()),
    GetPage(name: '/homescreen', page: ()=>Homescreen()),
    GetPage(name: '/meetingschedule', page: ()=>MeetingScheduleScreen()),
    GetPage(name: '/notesscreen', page: ()=> NotesScreen()),
    GetPage(name: '/editmeeting', page: ()=> EditingMeetingScheduleScreen()),
    GetPage(name: '/chatbox', page: ()=> ChatBoxScreen()),
    GetPage(name: '/chattingscreen', page: ()=> ChattingScreen()),
    GetPage(name: '/profilescreen', page: ()=>ProfileScreen()),
    GetPage(name: '/allmeetingscreen', page: ()=>Allmeetingschedulescreen()),
    GetPage(name: '/allnotesscreen', page: ()=> AllNotesScreen()),
    GetPage(name: '/editnotesscreen', page: ()=> EditingNotesScreen()),

  ];
}

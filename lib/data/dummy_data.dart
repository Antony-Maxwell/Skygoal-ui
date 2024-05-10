import 'package:flutter/material.dart';

class DummyData{
  static const images = [
    "https://www.aaascholarships.org/wp-content/uploads/2015/12/Students-in-classroom.jpg",
    "https://www.itl.cat/pngfile/big/214-2140785_ielts-student.jpg",
    "https://wallpaperaccess.com/full/2245189.jpg"
  ];

  static const title = [
    'Top Colleges',
    'Top Schools',
    'Exams',
  ];

  static const descriptions = [
    'Search through thousands of \naccredited colleges and universities\nonline tp find the right one for you.\nApply in 3 min, and connect with your\nfuture.',
    'Searching for the best school for you\n just got easier! With out advanced\nSchool Search, you can easily filter out\nthe schools that are fit for you',
    'Find an end to end information about\nthe exams that are happening in india'
  ];

  static const count = [
    '+126',
    '+106',
    '+16',
  ];

  static const category = [
    'Colleges',
    'Schools',
    'Exams'
  ];

  static const List<NavigationDestination> bottomNavItems = <NavigationDestination>[
  NavigationDestination(icon: Icon(Icons.home, color: Colors.white,), label: 'search',),
  NavigationDestination(icon: Icon(Icons.bookmark_added, color: Colors.white,), label: 'saved'),
  NavigationDestination(icon: Icon(Icons.saved_search_outlined, color: Colors.white,), label: 'saved'),
  NavigationDestination(icon: Icon(Icons.person_3, color: Colors.white,), label: 'account'),
];

  static const listImage = [
    "assets/images/Banker-PNG-File.png",
    "assets/images/Doctor-Symbol-Caduceus-Free-PNG-Image.png",
    "assets/images/Grad-Cap-PNG-Clipart.png",
    "assets/images/Law-PNG-Cutout.png",
    "assets/images/Document-PNG-Free-Image.png"
  ];

  static const listTitle = [
    'Management',
    'Pharmacy',
    'Bachelor of Technology',
    'Law',
    'Bachelor of Architecture'
  ];

  static const collegeNames = [
    'MVHS Engineering',
    'GHSS Engineering',
    'ABCD Engineering',
  ];

  static const detailedImage = [
    "assets/images/college2.jpg",
    "assets/images/REAL-university-of-florida-pic.jpg",
    "assets/images/college3.jpg"
  ];

  static const locationImage = "assets/images/dummylocation.jpg";

  static const studentImages = [
    "assets/images/student1.png",
    "assets/images/student2.png",
    "assets/images/student3.png",
    "assets/images/student5.png",
  ];

  static const hostelImage = [
    "assets/images/hostel1.jpg",
    "assets/images/hostel2.jpg",
    "assets/images/hostel3.jpg",
    "assets/images/hostel4.jpg",
    "assets/images/hostel5.jpg",
    "assets/images/hostel6.jpg",
  ];

  static const facilities = [
    "assets/images/university.png",
    "assets/images/bathroom.png",
  ];

  static const facilitiesText = [
    'College in 400 mtrs',
    'Bathroom : 2',
  ];

  static const likeImage = "assets/images/like.png";
}
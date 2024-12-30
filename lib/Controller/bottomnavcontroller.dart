import 'package:get/get.dart';
import 'package:newsapp/Pages/ArticlesPage/articlespage.dart';
import 'package:newsapp/Pages/HomePage/homepage.dart';
import 'package:newsapp/Pages/ProfilePage/profilepage.dart';

class BottomNavController extends GetxController {
  RxInt Index = 0.obs;

  var pages = [
    const Homepage(),
    const ArticlesPage(),
    const ProfilePage(),
  ];
}

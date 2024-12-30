import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/Components/navigationbar.dart';
import 'package:newsapp/Controller/bottomnavcontroller.dart';

class HomePageController extends StatelessWidget {
  const HomePageController({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController controller = Get.put(BottomNavController());
    return Scaffold(
      floatingActionButton: const MyBottomNav(),
      body: Obx(() => controller.pages[controller.Index.value]),
    );
  }
}

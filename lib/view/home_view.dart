import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:quiz_game_api/controller/home_view_controller.dart';

class MyHome extends StatelessWidget {
  MyHome({super.key});
  HomeViewController homeViewController = Get.put(HomeViewController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Obx(() => homeViewController.isLoding.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Center(child: Text("data fetch"))));
  }
}

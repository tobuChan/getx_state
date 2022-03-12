import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/routes/app_pages.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(() {
                return Text(controller.state.msg.value);
              }),
              Obx(() {
                return Text(controller.state.msgFromSecond.value);
              }),
              ElevatedButton(
                  onPressed: () {
                    controller.ChangeMsg();
                  },
                  child: Text('Change')),
              ElevatedButton(
                  onPressed: () {
                    controller.toSecond();
                  },
                  child: Text('go to second page'))
            ],
          ),
        ));
  }
}

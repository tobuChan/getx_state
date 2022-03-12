import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeView'),
          centerTitle: true,
        ),
        body: Obx(() {
          return ListView.builder(
              itemCount: controller.state.goodsData.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    controller.toDetail(index);
                  },
                  child: ListTile(
                    title: Text(controller.state.goodsData[index].title ??
                        '')
                  ),
                );
              });
        })
    );
  }
}

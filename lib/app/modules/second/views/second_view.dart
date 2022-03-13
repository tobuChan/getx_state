import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/second_controller.dart';

class SecondView extends GetView<SecondController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('SecondView'),
          centerTitle: true,
          // leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
          //   controller.getBack();
          // },),
        ),
        body: Obx(() {
          return Row(
            children: [
              Text(controller.state.Detail.title ?? ''),
              IconButton(onPressed: () {
                controller.isLike(controller.state.Detail)?controller.removeLike(controller.state.Detail):controller.addLike(controller.state.Detail);
              },
                  icon: Icon(Icons.favorite,
                      color: controller.isLike(controller.state.Detail)
                          ? Colors.red
                          : Colors.grey))
            ],
          );
        })
    );
  }
}

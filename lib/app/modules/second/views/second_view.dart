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
        leading: IconButton(
          onPressed: (){
            controller.getBack();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Obx(() {
          return Text(
            controller.state.msgFromHome.value,
            style: TextStyle(fontSize: 20),
          );
        }),
      ),
    );
  }
}

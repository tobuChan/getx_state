import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('状态管理'),
        centerTitle: true,
      ),
      body: Obx(() {
        return ListView.builder(
            itemCount: controller.state.goodsData.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(controller.state.goodsData[index].title ??
                    ''),
                trailing: InkWell(
                    onTap: () {
                      controller.toDetail(index);
                    },
                    child: Obx(() {
                      return Text(controller.state.likeList.contains(
                          controller.state.goodsData[index]) ? '已收藏' : '收藏商品');
                    })
                ),
              );
            });
      }),

    );
  }
}

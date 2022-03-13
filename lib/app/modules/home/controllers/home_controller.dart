import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/app/data/GoodsModel.dart';
import 'package:getx_demo/app/modules/home/states/home_state.dart';
import 'package:dio/dio.dart';

import '../../../routes/app_pages.dart';
class HomeController extends GetxController {
  HomeState state =HomeState();

  getData()async{
    final response= await Dio().get('https://jdmall.itying.com/api/pcate');
    final goodsList = GoodsModel.fromJson(response.data);
    state.goodsData.value=goodsList.result!;
  }
  toDetail(int index){
    Get.toNamed(Routes.SECOND,arguments: state.goodsData[index]);
  }


  @override
  void onInit() {
    super.onInit();
    getData();
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {}
}

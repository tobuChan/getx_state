import 'package:get/get.dart';
import 'package:getx_demo/app/modules/second/states/second_state.dart';

class SecondController extends GetxController {
  SecondState state =SecondState();

  getBack(){
    Get.back(result: 'hello , im from second');
  }

  @override
  void onInit() {
    super.onInit();
    state.msgFromHome.value=Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

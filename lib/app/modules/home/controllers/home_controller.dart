import 'package:get/get.dart';
import 'package:getx_demo/app/modules/home/states/home_state.dart';

import '../../../routes/app_pages.dart';
class HomeController extends GetxController {
  HomeState state =HomeState();
  ChangeMsg(){
    state.msg.value='jett';
  }
  toSecond()async{
    var result= await Get.toNamed(Routes.SECOND,arguments: state.msg.value);
    state.msgFromSecond.value=result;
  }
  @override
  void onInit() {
    super.onInit();
  }
  @override
  void onReady() {
    super.onReady();
  }
  @override
  void onClose() {}
}

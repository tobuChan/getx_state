import 'package:get/get.dart';
import 'package:getx_demo/app/data/GoodsModel.dart';
import 'package:getx_demo/app/modules/home/controllers/home_controller.dart';
import 'package:getx_demo/app/modules/second/states/second_state.dart';

class SecondController extends GetxController {
  SecondState state =SecondState();
  ///获取home页面的controller
  final controllerP=Get.find<HomeController>();
 ///如果home的存储收藏的likeList里的实例的sId包含了当前实例的sId，返回true
  bool isLike(Result result){
    return  controllerP.state.likeList.any((element) => element.sId==result.sId);
  }
  ///把当前实例存储到likeList里
  addLike(Result result){
    controllerP.state.likeList.add(result);
  }
  ///从likeList移除当前实例
  removeLike(Result result){
      controllerP.state.likeList.remove(result);
  }


  @override
  void onInit() {
    super.onInit();
    ///接收第一页传过来的实例，赋值给Detail
    state.Detail=Get.arguments;
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}

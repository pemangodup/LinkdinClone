import 'package:get/get.dart';

class Controller extends GetxController{
  var selectedIndex = 1.obs;

  increment(RxInt index){
    selectedIndex = index;
    print("Let me see $selectedIndex");
    update();
  }
}
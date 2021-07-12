import 'package:get/get.dart';

class Controller extends GetxController{
  var selectedIndex = 0.obs;

  increment(int index){
    selectedIndex = index as RxInt;
    print(" I am from controller $selectedIndex");
  }
}
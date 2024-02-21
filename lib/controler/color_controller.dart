import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class ColorController extends GetxController{
  RxDouble opacity = 0.5.obs;

  changeOpacity(double value) => opacity.value = value;
}
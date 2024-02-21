import 'package:get/get.dart';

class SwitchController extends GetxController{
  RxBool notification = false.obs;

  notificationSwitch(value) => notification.value = value;
}
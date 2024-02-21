import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CounterController extends GetxController{
 RxInt x = 0.obs;

 increment(){
   x.value++;
   print(x.value);
 }
}
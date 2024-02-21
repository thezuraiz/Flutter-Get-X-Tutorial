import 'package:get/get.dart';

class FavFruitsController extends GetxController {
  RxList<String> fruitsList = ['Orange', 'Apple', 'Mango', 'Banana', 'Cherry','Grapes','PineApple','Strawberry']
      .obs;
  RxList tempList = [].obs;

  addToFav(String fruit) => tempList.add(fruit);


  removeToFav(String fruit) => tempList.remove(fruit);

}
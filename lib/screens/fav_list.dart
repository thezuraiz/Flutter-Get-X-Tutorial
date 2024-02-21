import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controler/fav_controller.dart';

class FavFruitsList extends StatefulWidget {
  const FavFruitsList({super.key});

  @override
  State<FavFruitsList> createState() => _FavFruitsListState();
}

class _FavFruitsListState extends State<FavFruitsList> {

  FavFruitsController fruitscontroller = Get.put(FavFruitsController());

  @override
  Widget build(BuildContext context) {
    debugPrint("Rebuild");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Get-X Fav Fruits Lists"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: fruitscontroller.fruitsList.length,
          itemBuilder: (context,index){
              return Card(child: ListTile(
                leading: Text(fruitscontroller.fruitsList[index].toString()),
                trailing: Obx(() => fruitscontroller.tempList.contains(fruitscontroller.fruitsList[index])
                    ? const Icon(CupertinoIcons.heart_fill, color: Colors.red,)
                    : const Icon(CupertinoIcons.heart)),
                onTap: (){
                  if(fruitscontroller.tempList.contains(fruitscontroller.fruitsList[index])){
                    fruitscontroller.removeToFav(fruitscontroller.fruitsList[index]);
                  }else{
                    fruitscontroller.addToFav(fruitscontroller.fruitsList[index]);
                  }
                },
              ));
          },
        ),
      )
    );
  }
}

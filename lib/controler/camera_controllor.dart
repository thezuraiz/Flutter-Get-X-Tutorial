import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:image_picker/image_picker.dart';

class CameraControllor extends GetxController{

  RxString photoPath = ''.obs;

  Future selectImage()async{
    ImagePicker imagepicker = ImagePicker();
    final image = await imagepicker.pickImage(source: ImageSource.camera);
    if(image == null){ return; }
    photoPath.value = image.path.toString();
  }
}
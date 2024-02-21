import 'package:get/get_navigation/src/root/internacionalization.dart';

class Languages extends Translations{
  @override
  Map<String, Map<String,String>> get keys => {
    'en_US': {
      'message': 'What is your name',
      'name': 'Zuraiz Khan'
    },
    'ur_PK': {
      'message': 'آپ کا نام کیا ہے',
      'name': 'زوریز خان'
    },
    'fr_FN': {
      'message': 'Quel est ton nom',
      'name': 'Zouraiz Khan'
    }
  };
}
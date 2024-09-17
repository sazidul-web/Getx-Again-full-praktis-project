import 'package:get/get.dart';

class Langues extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'massage': 'What is your name',
          'name': 'My name is sazidul islam'
        },
        'bn_BD': {
          'massage': 'তোমার নাম কি',
          'name': 'আমার নাম সাজিদুল ইসলাম',
        }
      };
}

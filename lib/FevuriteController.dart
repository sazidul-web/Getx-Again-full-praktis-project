import 'package:get/get.dart';

class Fevuritecontroller extends GetxController {
  RxList<String> frutolist = ['Apple', 'Mango', 'Orange', 'Bnana'].obs;
  RxList tempfrutolist = [].obs;
  addtofevorit(String value) {
    tempfrutolist.add(value);
  }

  removedfromfevorit(String value) {
    tempfrutolist.remove(value);
  }
}

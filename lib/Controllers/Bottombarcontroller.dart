import 'package:get/get.dart';

class BottomNavController extends GetxController {
  var selectedIndex = 0.obs;
  var history = <int>[0].obs;
  
  void changeTab(int index) {
    if (index == selectedIndex.value) return;
    
    int lastPos = -1;
    for (int i = 0; i < history.length; i++) {
      if (history[i] == index) {
        lastPos = i;
      }
    }
    
    if (lastPos != -1) {
      history.removeRange(lastPos + 1, history.length);
    } else {
      history.add(index);
    }
    
    selectedIndex.value = index;
  }
}
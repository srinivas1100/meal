import 'package:get/get.dart';

class CheckProgressController extends GetxController {
  //TODO: Implement CheckProgressController
  var selectedValue = 'Weekly'.obs; // Default value is 'Weekly'

  // Function to update the dropdown value
  void updateSelectedValue(String newValue) {
    selectedValue.value = newValue;

    final count = 0.obs;
    @override
    void onInit() {
      super.onInit();
    }

    @override
    void onReady() {
      super.onReady();
    }

    @override
    void onClose() {
      super.onClose();
    }

    void increment() => count.value++;
  }
}

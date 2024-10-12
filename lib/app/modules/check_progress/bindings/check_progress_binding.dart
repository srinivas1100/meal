import 'package:get/get.dart';

import '../controllers/check_progress_controller.dart';

class CheckProgressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CheckProgressController>(
      () => CheckProgressController(),
    );
  }
}

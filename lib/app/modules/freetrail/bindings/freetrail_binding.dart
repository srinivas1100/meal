import 'package:get/get.dart';

import '../controllers/freetrail_controller.dart';

class FreetrailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<FreetrailController>(
      () => FreetrailController(),
    );
  }
}

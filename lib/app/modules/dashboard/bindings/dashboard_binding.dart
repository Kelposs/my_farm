import 'package:get/get.dart';

import '../../consultation/controllers/consultation_controller.dart';
import '../../home/controllers/home_controller.dart';
import '../../profile/controllers/profile_controller.dart';
import '../../track/controllers/track_controller.dart';
import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );
    Get.lazyPut<ProfileController>(
      () => ProfileController(),
    );
    Get.lazyPut<ConsultationController>(
      () => ConsultationController(),
    );
    Get.lazyPut<TrackController>(() => TrackController());
    Get.lazyPut<HomeController>(() => HomeController());
  }
}

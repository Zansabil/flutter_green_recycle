import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/scheduledorders_page/models/scheduledorders_model.dart';

/// A controller class for the ScheduledordersPage.
///
/// This class manages the state of the ScheduledordersPage, including the
/// current scheduledordersModelObj
class ScheduledordersController extends GetxController {
  ScheduledordersController(this.scheduledordersModelObj);

  Rx<ScheduledordersModel> scheduledordersModelObj;
}

import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/orderhistory_page/models/orderhistory_model.dart';

/// A controller class for the OrderhistoryPage.
///
/// This class manages the state of the OrderhistoryPage, including the
/// current orderhistoryModelObj
class OrderhistoryController extends GetxController {
  OrderhistoryController(this.orderhistoryModelObj);

  Rx<OrderhistoryModel> orderhistoryModelObj;
}

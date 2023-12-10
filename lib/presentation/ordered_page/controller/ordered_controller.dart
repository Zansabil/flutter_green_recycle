import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/ordered_page/models/ordered_model.dart';

/// A controller class for the OrderedPage.
///
/// This class manages the state of the OrderedPage, including the
/// current orderedModelObj
class OrderedController extends GetxController {
  OrderedController(this.orderedModelObj);

  Rx<OrderedModel> orderedModelObj;
}

import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/orderedtabcontainer_page/models/orderedtabcontainer_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OrderedtabcontainerPage.
///
/// This class manages the state of the OrderedtabcontainerPage, including the
/// current orderedtabcontainerModelObj
class OrderedtabcontainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  OrderedtabcontainerController(this.orderedtabcontainerModelObj);

  Rx<OrderedtabcontainerModel> orderedtabcontainerModelObj;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}

import '../orderhistory_page/widgets/orderhistory_item_widget.dart';
import 'controller/orderhistory_controller.dart';
import 'models/orderhistory_item_model.dart';
import 'models/orderhistory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

class OrderhistoryPage extends StatelessWidget {
  OrderhistoryPage({Key? key})
      : super(
          key: key,
        );

  OrderhistoryController controller =
      Get.put(OrderhistoryController(OrderhistoryModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.putih,
          child: Column(
            children: [
              SizedBox(height: 28.v),
              _buildOrderHistory(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderHistory() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 20.v,
              );
            },
            itemCount: controller
                .orderhistoryModelObj.value.orderhistoryItemList.value.length,
            itemBuilder: (context, index) {
              OrderhistoryItemModel model = controller
                  .orderhistoryModelObj.value.orderhistoryItemList.value[index];
              return OrderhistoryItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}

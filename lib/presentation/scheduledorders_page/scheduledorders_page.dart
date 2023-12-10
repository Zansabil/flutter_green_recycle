import '../scheduledorders_page/widgets/scheduledorders_item_widget.dart';
import 'controller/scheduledorders_controller.dart';
import 'models/scheduledorders_item_model.dart';
import 'models/scheduledorders_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

class ScheduledordersPage extends StatelessWidget {
  ScheduledordersPage({Key? key})
      : super(
          key: key,
        );

  ScheduledordersController controller =
      Get.put(ScheduledordersController(ScheduledordersModel().obs));

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
              _buildScheduledOrders(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildScheduledOrders() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 22.h,
          right: 28.h,
        ),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 15.v,
              );
            },
            itemCount: controller.scheduledordersModelObj.value
                .scheduledordersItemList.value.length,
            itemBuilder: (context, index) {
              ScheduledordersItemModel model = controller
                  .scheduledordersModelObj
                  .value
                  .scheduledordersItemList
                  .value[index];
              return ScheduledordersItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}

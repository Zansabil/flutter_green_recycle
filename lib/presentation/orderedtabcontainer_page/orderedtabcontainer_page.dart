import 'controller/orderedtabcontainer_controller.dart';
import 'models/orderedtabcontainer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_green_recycle/core/app_export.dart';
import 'package:flutter_green_recycle/presentation/ordered_page/ordered_page.dart';
import 'package:flutter_green_recycle/presentation/orderhistory_page/orderhistory_page.dart';
import 'package:flutter_green_recycle/presentation/scheduledorders_page/scheduledorders_page.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_image.dart';
import 'package:flutter_green_recycle/widgets/app_bar/appbar_title.dart';
import 'package:flutter_green_recycle/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class OrderedtabcontainerPage extends StatelessWidget {
  OrderedtabcontainerPage({Key? key}) : super(key: key);

  OrderedtabcontainerController controller =
      Get.put(OrderedtabcontainerController(OrderedtabcontainerModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 25.v),
                  _buildTabview(),
                  Expanded(
                      child: SizedBox(
                          height: 670.v,
                          child: TabBarView(
                              controller: controller.tabviewController,
                              children: [
                                OrderedPage(),
                                ScheduledordersPage(),
                                OrderhistoryPage()
                              ])))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 78.v,
        centerTitle: true,
        title: Container(
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 13.v),
            decoration: AppDecoration.fillPrimary
                .copyWith(borderRadius: BorderRadiusStyle.customBorderBL30),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppbarImage(
                      imagePath: ImageConstant.imgIconlyLightArrow,
                      margin: EdgeInsets.only(left: 0.h, bottom: 0.v),
                      onTap: () {
                        onTapIconlyLightArrow();
                      }),
                  AppbarTitle(
                      text: "lbl_pesanan".tr,
                      margin: EdgeInsets.only(left: 111.h, bottom: 21.v)),
                  AppbarImage(
                      imagePath: ImageConstant.imgIconlyLightOu,
                      margin: EdgeInsets.only(left: 100.h, bottom: 21.v))
                ])),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
        height: 34.v,
        width: 384.h,
        child: TabBar(
            controller: controller.tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.errorContainer.withOpacity(0.8),
            labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            unselectedLabelColor:
                theme.colorScheme.primaryContainer.withOpacity(0.62),
            unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
            indicatorColor: theme.colorScheme.primary,
            tabs: [
              Tab(child: Text("lbl_dipesan".tr)),
              Tab(child: Text("lbl_terjadwal".tr)),
              Tab(child: Text("lbl_riwayat".tr))
            ]));
  }

  /// Navigates to the homecontainerScreen when the action is triggered.
  onTapIconlyLightArrow() {
    Get.toNamed(
      AppRoutes.homecontainerScreen,
    );
  }
}

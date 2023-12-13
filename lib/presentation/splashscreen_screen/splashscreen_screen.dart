import 'package:flutter/material.dart';
import 'controller/splashscreen_controller.dart';
import 'package:flutter_green_recycle/core/app_export.dart';

class SplashscreenScreen extends GetWidget<SplashscreenController> {
  const SplashscreenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 197.v),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 55.h),
                child: AnimatedGreenRecycleText(),
              ),
              SizedBox(height: 66.v),
              _buildSixtyOne(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSixtyOne() {
    return Padding(
      padding: EdgeInsets.only(left: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgDesainTanpaJudul,
            height: 102.v,
            width: 94.h,
            margin: EdgeInsets.only(bottom: 38.v),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgDesainTanpaJudul68x134,
            height: 68.v,
            width: 134.h,
            margin: EdgeInsets.only(top: 72.v),
          ),
        ],
      ),
    );
  }
}

class AnimatedGreenRecycleText extends StatefulWidget {
  @override
  _AnimatedGreenRecycleTextState createState() => _AnimatedGreenRecycleTextState();
}

class _AnimatedGreenRecycleTextState extends State<AnimatedGreenRecycleText> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

     _controller = AnimationController(
      duration: Duration(seconds: 4),
      vsync: this,
    )..repeat(reverse: false); // Setelah mencapai akhir, ulangi dengan mengganti arah (reverse)

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Text(
            "GreenRecycle".tr,
            textAlign: TextAlign.center,
            style: CustomTextStyles.displaySmallOnPrimaryContainer.copyWith(
              height: 1.0,
              color: const Color.fromARGB(255, 4, 255, 0),
              shadows: [
                BoxShadow(
                  color: Colors.black.withOpacity(1.0),
                  offset: Offset(2.0, 2.0),
                  blurRadius: 1.0,
                ),
              ],
              letterSpacing: 2.0,
            ),
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
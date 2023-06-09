import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:job_hub/constants.dart';
import 'package:job_hub/core/widgets/app_style.dart';
import 'package:job_hub/core/widgets/custom_outline_btn.dart';
import 'package:job_hub/core/widgets/height_spacer.dart';
import 'package:job_hub/core/widgets/reusable_text.dart';
import 'package:job_hub/features/auth/presentation/views/login_view/login_view.dart';
import 'package:job_hub/features/auth/presentation/views/register_view/register_view.dart';

class PageThree extends StatelessWidget {
  const PageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Container(
        height: height,
        width: width,
        color: Color(kLightBlue.value),
        child: Column(
          children: [
            Image.asset(
              height: height * 0.6,
              width: width,
              'assets/images/page3.png',
              fit: BoxFit.fitWidth,
            ),
            const HeightSpacer(size: 15),
            ReusableText(
              text: 'Find Your Dream Job',
              style: appStyle(
                35,
                Colors.white,
                FontWeight.w500,
              ),
            ),
            const HeightSpacer(size: 15),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Text(
                'We help you find your dream job according to your skills, location, and preference to build your career',
                textAlign: TextAlign.center,
                style: appStyle(
                  15,
                  Color(kLight.value),
                  FontWeight.normal,
                ),
              ),
            ),
            const HeightSpacer(size: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CustomOutlineButton(
                  height: height * 0.065,
                  width: width * 0.4,
                  onTap: () {
                    Get.to(() => const LoginView());
                  },
                  color1: Color(kLight.value),
                  text: 'Login',
                ),
                CustomOutlineButton(
                  height: height * 0.065,
                  width: width * 0.4,
                  onTap: () {
                    Get.to(() => const RegisterView());
                  },
                  color1: Color(kLightBlue.value),
                  color2: Colors.white,
                  text: 'Register',
                ),
              ],
            ),
            const HeightSpacer(size: 30),
            Text(
              'Continue as a guest',
              style: appStyle(
                16,
                Color(kLight.value),
                FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

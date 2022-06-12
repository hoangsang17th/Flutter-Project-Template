import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:todo_getx_pattern/app/core/values/string.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            AppString.appName,
            style: const TextStyle(
              fontSize: 25,
            ),
          ),
          SizedBox(
            height: 40,
            width: Get.width,
          ),
          SvgPicture.asset(
            "assets/images/welcome.svg",
            height: 300,
          ),
        ],
      ),
    );
  }
}

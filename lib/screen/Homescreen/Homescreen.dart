import 'package:dashboard/controller/menuecontroller.dart';
import 'package:dashboard/responsev/enums/device_type.dart';
import 'package:dashboard/responsev/ui_components/info_widget.dart';
import 'package:dashboard/screen/Homescreen/components/Litoflisttile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant.dart';
import '../Dashboard/Dashboard.dart';

class Homescreen extends StatelessWidget {
  Homescreen({Key? key}) : super(key: key);
  MenuController controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      drawer: SideMenu(),
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          constraints: BoxConstraints(
            maxWidth: 1600,
          ),
          child: InfoWidget(
            builder: (context, deviceInfo) {
              return Row(
                children: [
                  deviceInfo.deviceType != DeviceType.Desktop
                      ? SizedBox()
                      : SizedBox(
                          width: deviceInfo.localWidth * 0.23,
                          height: deviceInfo.localHeight,
                          child: SideMenu(),
                        ),
                  SizedBox(
                    width: deviceInfo.deviceType != DeviceType.Desktop
                        ? deviceInfo.localWidth
                        : deviceInfo.localWidth * 0.72,
                    height: deviceInfo.localHeight,
                    child: Dashboard(),
                  )
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

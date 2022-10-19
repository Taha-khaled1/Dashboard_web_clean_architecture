import 'package:dashboard/responsev/enums/device_type.dart';
import 'package:dashboard/responsev/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';
import 'componets/Header.dart';
import 'componets/Myfiles.dart';
import 'componets/StarageDetails.dart';
import 'componets/recentfiles.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Header(),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  children: [
                    Container(
                      width: deviceInfo.deviceType == DeviceType.Mobile
                          ? deviceInfo.localWidth
                          : deviceInfo.localWidth * 0.65,
                      child: Column(
                        children: [
                          Myfiles(
                            deviceInfo: deviceInfo,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: RecentFiles(),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          deviceInfo.deviceType == DeviceType.Mobile
                              ? StarageDetails()
                              : SizedBox(),
                        ],
                      ),
                    ),
                    deviceInfo.deviceType == DeviceType.Mobile
                        ? SizedBox()
                        : Container(
                            height: 700,
                            width: deviceInfo.localWidth * 0.35,
                            color: secondaryColor,
                            child: StarageDetails(),
                          ),
                  ],
                )
              ],
            ),
          );
        },
      ),
    );
  }
}

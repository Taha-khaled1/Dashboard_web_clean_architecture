import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../responsev/enums/device_type.dart';
import '../../../responsev/ui_components/info_widget.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: defaultPadding / 2),
      padding: EdgeInsets.symmetric(
        horizontal: defaultPadding / 2,
        vertical: defaultPadding / 2,
      ),
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        border: Border.all(color: Colors.white10),
      ),
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return Row(
            children: [
              Image.asset(
                "assets/images/profile_pic.png",
                height: 38,
              ),
              if (deviceInfo.deviceType == DeviceType.Desktop)
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: defaultPadding / 2),
                  child: Text(
                    "Angelina Jolie",
                    style: TextStyle(
                      color: Colors.grey[200],
                    ),
                  ),
                ),
              Icon(Icons.keyboard_arrow_down),
            ],
          );
        },
      ),
    );
  }
}

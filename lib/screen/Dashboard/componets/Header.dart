import 'package:dashboard/responsev/enums/device_type.dart';
import 'package:dashboard/responsev/ui_components/info_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constant.dart';
import '../../../controller/menuecontroller.dart';
import 'ProfileCard.dart';
import 'SearchField.dart';

class Header extends GetView<MenuController> {
  Header({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;
    return Container(
      width: double.infinity,
      child: InfoWidget(
        builder: (context, deviceInfo) {
          return SizedBox(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      deviceInfo.deviceType != DeviceType.Desktop
                          ? InkWell(
                              onTap: () => controller.controlMenu(),
                              child: Icon(
                                Icons.menu,
                                size: 50,
                                color: Colors.white,
                              ),
                            )
                          : SizedBox(),
                      Text(
                        'Dashboard',
                        style: Whattextstyel(
                          deviceInfo,
                          textTheme,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: whatwidth(deviceInfo),
                        child: SearchField(),
                      ),
                      ProfileCard(),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

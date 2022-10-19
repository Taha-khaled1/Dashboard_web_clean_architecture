import 'package:dashboard/responsev/models/device_info.dart';
import 'package:flutter/material.dart';
import '../../../constant.dart';
import 'FileInfoCardGridView.dart';
import 'litrowtext.dart';

class Myfiles extends StatelessWidget {
  Myfiles({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);
  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: listrowtext(deviceInfo: deviceInfo),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: FileInfoCardGridView(),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../responsev/enums/device_type.dart';
import '../../../responsev/models/device_info.dart';

class listrowtext extends StatelessWidget {
  const listrowtext({
    Key? key,
    required this.deviceInfo,
  }) : super(key: key);

  final DeviceInfo deviceInfo;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "My Files",
          style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Colors.grey[200],
              ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Icon(Icons.add),
          label: Text("Add New"),
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding * 1.5,
              vertical: defaultPadding /
                  (deviceInfo.deviceType == DeviceType.Mobile ? 2 : 1),
            ),
          ),
        ),
      ],
    );
  }
}

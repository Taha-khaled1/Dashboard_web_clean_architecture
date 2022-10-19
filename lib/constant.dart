import 'package:dashboard/responsev/enums/device_type.dart';
import 'package:dashboard/responsev/models/device_info.dart';
import 'package:flutter/material.dart';

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color(0xFF2A2D3E);
const bgColor = Color(0xFF212332);
const defaultPadding = 16.0;
TextStyle Whattextstyel(DeviceInfo iswhat, TextTheme textTheme) {
  if (iswhat.deviceType == DeviceType.Desktop) {
    return textTheme.headline3!.copyWith(color: Colors.grey[200]);
  } else if (iswhat.deviceType == DeviceType.Tablet) {
    return textTheme.headline4!.copyWith(color: Colors.grey[200]);
  } else {
    return textTheme.headline5!.copyWith(color: Colors.grey[200]);
  }
}

double whatwidth(DeviceInfo iswhat) {
  if (iswhat.deviceType == DeviceType.Desktop) {
    return 270;
  } else if (iswhat.deviceType == DeviceType.Tablet) {
    return 150;
  } else {
    return 60;
  }
}

int whatcrosscount(DeviceInfo iswhat) {
  if (iswhat.deviceType == DeviceType.Desktop) {
    return 3;
  } else if (iswhat.deviceType == DeviceType.Tablet) {
    return 2;
  } else {
    return 2;
  }
}

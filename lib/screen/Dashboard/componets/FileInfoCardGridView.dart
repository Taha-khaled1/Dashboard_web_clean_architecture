import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../models/MyFiles.dart';
import '../../../responsev/ui_components/info_widget.dart';
import 'FileInfoCard.dart';

class FileInfoCardGridView extends StatelessWidget {
  const FileInfoCardGridView({
    Key? key,
    this.childAspectRatio = 1,
  }) : super(key: key);

  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return InfoWidget(
      builder: (context, deviceInfo) {
        return GridView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: demoMyFiles.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: whatcrosscount(deviceInfo),
            crossAxisSpacing: defaultPadding,
            mainAxisSpacing: defaultPadding,
            childAspectRatio: childAspectRatio,
          ),
          itemBuilder: (context, index) =>
              FileInfoCard(info: demoMyFiles[index]),
        );
      },
    );
  }
}

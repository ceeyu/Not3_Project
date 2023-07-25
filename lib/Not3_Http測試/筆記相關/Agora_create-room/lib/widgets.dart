import 'package:fastboard_flutter/fastboard_flutter.dart';
import 'package:flutter/material.dart';

import 'test_data.dart';

class CloudTestWidget extends StatefulWidget {
  final FastRoomController controller;

  CloudTestWidget({
    required this.controller,
    Key? key,
  }) : super(key: key);

  @override
  State<CloudTestWidget> createState() {
    return CloudTestWidgetState();
  }
}

class CloudTestWidgetState extends State<CloudTestWidget> {
  var showCloud = false;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: Stack(
          children: [
            if (showCloud)
              Positioned(
                right: 56.0,
                child: buildCloudLayout(context),
              ),
            Positioned(
                right: 12.0,
                child: InkWell(
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    child: Icon(Icons.cloud, size: 24.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.fromBorderSide(BorderSide(
                          width: 1.0,
                          color: Colors.black38,
                        )),
                        borderRadius: BorderRadius.circular(4.0)),
                  ),
                  onTap: switchShowCloud,
                )),
          ],
          alignment: AlignmentDirectional.center,
        ));
  }

  void switchShowCloud() {
    setState(() {
      showCloud = !showCloud;
    });
  }

  Widget buildCloudLayout(BuildContext context) {
    var items = TestData.kCloudFiles;

    return Container(
      width: 250.0,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.fromBorderSide(BorderSide(
            width: 1.0,
            color: Colors.black38,
          )),
          borderRadius: BorderRadius.circular(4.0)),
      child: Column(
        children: [
          ListTile(title: Text("Cloud")),
          SizedBox(
            height: 200,
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                var item = items[index];

                return SizedBox(
                  height: 50,
                  child: InkWell(
                    onTap: () => onItemClick(item),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 4.0,
                          ),
                          child: iconByItem(item),
                        ),
                        Expanded(
                          child: Text(items[index].name),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4.0),
                          child: TestData.iconAdd,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget iconByItem(CloudFile item) {
    var map = <String, Widget>{
      "pdf": TestData.iconPdf,
      "ppt": TestData.iconPpt,
      "pptx": TestData.iconPpt,
      "png": TestData.iconImage,
      "mp4": TestData.iconVideo,
    };
    return map[item.type] ?? TestData.iconPdf;
  }

  void onItemClick(CloudFile item) {
    switch (item.type) {
      case "png":
      case "jpg":
        widget.controller.insertImage(item.url, item.width!, item.height!);
        break;
      case "mp4":
        widget.controller.insertVideo(item.url, item.name);
        break;
      case "ppt":
      case "pptx":
        widget.controller.insertDoc(InsertDocParams(
          taskUUID: item.taskUUID!,
          taskToken: item.taskToken!,
          dynamic: true,
          title: item.name,
          region: FastRegion.cn_hz,
        ));
        break;
      case "pdf":
        widget.controller.insertDoc(InsertDocParams(
          taskUUID: item.taskUUID!,
          taskToken: item.taskToken!,
          dynamic: false,
          title: item.name,
          region: FastRegion.cn_hz,
        ));
        break;
    }
    switchShowCloud();
  }
}

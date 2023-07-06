// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:pencil_kit/pencil_kit.dart';

class NormalLeaf extends StatefulWidget {
  const NormalLeaf({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _NormalLeafState createState() => _NormalLeafState();
}
/*
class _NormalLeafState extends State<NormalLeaf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('葉子名稱'),
          ),
          backgroundColor: Colors.green,
          elevation: 0.0,
        ),
        body: Container(
          child: Text('普通葉子'),
        ));
  }
  */

class _NormalLeafState extends State<NormalLeaf> {
  late final PencilKitController controller;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Widelab PencilKit'),
          actions: [
            IconButton(
              icon: const Icon(Icons.palette), //調色盤
              onPressed: () => controller.show(),
            ),
            IconButton(
              icon: const Icon(Icons.close), //關閉
              onPressed: () => controller.hide(),
            ),
            IconButton(
              icon: const Icon(Icons.undo), //上一步
              onPressed: () => controller.undo(),
            ),
            IconButton(
              icon: const Icon(Icons.redo), //下一步
              onPressed: () => controller.redo(),
            ),
            IconButton(
              icon: const Icon(Icons.refresh), //重新開始
              onPressed: () => controller.clear(),
            ),
          ],
        ),
        body: PencilKit(
          onPencilKitViewCreated: (controller) => this.controller = controller,
          alwaysBounceVertical: false,
          alwaysBounceHorizontal: true,
          isRulerActive: false,
          drawingPolicy: PencilKitIos14DrawingPolicy.anyInput,
          onToolPickerVisibilityChanged: (isVisible) {
            if (kDebugMode) {
              print('isToolPickerVisible $isVisible');
            }
          },
          onRulerActiveChanged: (isRulerActive) {
            if (kDebugMode) {
              print('isRulerActive $isRulerActive');
            }
          },
          backgroundColor: Colors.blue.withOpacity(0.1),
          isOpaque: false,
        ),
      ),
    );
  }
}

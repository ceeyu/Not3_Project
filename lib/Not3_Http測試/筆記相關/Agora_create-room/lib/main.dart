
import 'package:flutter/material.dart';

import 'custom_layout.dart';
import 'page.dart';
import 'quick_start.dart';

final List<FastExamplePage> _allPages = <FastExamplePage>[
  const QuickStartPage(), //快速開始頁面
  const CustomLayoutPage(), //自定義佈局
];

void main() {
  // 檢查是否在生產環境，若是則禁用debugPrint輸出
  const bool isProduction = bool.fromEnvironment('dart.vm.product');
  if (isProduction) {
    debugPrint = (String? message, {int? wrapWidth}) => null;
  }
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fastboard'),
        ),
        body: ListView.builder(
          itemCount: _allPages.length,
          itemBuilder: (appContext, index) => ListTile(
            leading: _allPages[index].leading,  // 列表項目前面的圖示
            title: Text(_allPages[index].title), // 列表項目的標題文字
            onTap: () => _pushPage(appContext, _allPages[index]), //點擊事件
          ),
        ),
      ),
    );
  }

  void _pushPage(BuildContext context, FastExamplePage page) {
    // 將選定的頁面推送到新的路由中進行跳轉
    Navigator.of(context).push(MaterialPageRoute<void>(
      builder: (_) => Scaffold(
        body: page, // 頁面內容由FastExamplePage的子類來決定
        // 防止鍵盤彈出時造成頁面大小變化
        resizeToAvoidBottomInset: false,
      ),
    ));
  }
}

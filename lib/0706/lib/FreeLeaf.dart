// ignore: file_names
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:flutter_project/components/FloatExpendButton_Add.dart';
import 'package:flutter_project/components/FloatExpendButton_Pan.dart';
import 'package:flutter/foundation.dart';
import 'package:pencil_kit/pencil_kit.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class FreeLeaf extends StatefulWidget {
  const FreeLeaf({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _FreeLeafState createState() => _FreeLeafState();
}

class _FreeLeafState extends State<FreeLeaf> {
  late final PencilKitController controller;
  bool _is_videio_on = false;
  bool _is_message_on = false; //xian0519
  // ignore: non_constant_identifier_names
  bool switchValue_Volume = true;
  // ignore: non_constant_identifier_names
  bool switchValue_Mic = true;
  // ignore: non_constant_identifier_names
  bool switchValue_Camera = true;
  // ignore: non_constant_identifier_names
  bool switchValue_Notify = true;
  SpeedDial buildSpeedDial() {
    return SpeedDial(
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 28.0),
      backgroundColor: Colors.green[900],
      visible: true,
      curve: Curves.bounceInOut,
      children: [
        SpeedDialChild(
          child: Icon(CupertinoIcons.smiley_fill, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed 貼紙'),
          label: '貼紙',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child:
              Icon(CupertinoIcons.arrow_right_arrow_left, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed 筆勢'),
          label: '筆勢',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.add_a_photo, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed 照片'),
          label: '照片',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.camera_alt, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed 相機'),
          label: '相機',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
        SpeedDialChild(
          child: Icon(Icons.pan_tool, color: Colors.white),
          backgroundColor: Colors.green,
          onTap: () => print('Pressed 移動'),
          label: '移動',
          labelStyle:
              TextStyle(fontWeight: FontWeight.w500, color: Colors.white),
          labelBackgroundColor: Colors.black,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Center(
          child: Text('葉子名稱'),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.green, Colors.blue]),
          ),
        ),
        actions: <Widget>[
          //越後面的button越右，由左往右的方向
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

          IconButton(
            tooltip: "彈幕",
            icon: _is_message_on
                ? const Icon(Icons.message)
                : const Icon(
                    Icons.speaker_notes_off,
                  ),
            onPressed: () {
              // do something
              setState(() {
                // Here we changing the icon.
                _is_message_on = !_is_message_on;
              });
            },
          ),
          IconButton(
            tooltip: "錄影",
            icon: _is_videio_on
                ? const Icon(Icons.videocam)
                : const Icon(
                    Icons.videocam_off,
                  ),
            onPressed: () {
              // do something
              setState(() {
                // Here we changing the icon.
                _is_videio_on = !_is_videio_on;
              });
            },
          ),
          IconButton(
            tooltip: "離開/結束",
            //最右邊
            icon: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      floatingActionButton: buildSpeedDial(),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                color: Colors.green,
                child: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    SizedBox(width: 20),
                    CircleAvatar(
                      //圓形頭像
                      minRadius: 35,
                      maxRadius: 35,
                      backgroundImage: NetworkImage(
                        'https://memeprod.ap-south-1.linodeobjects.com/user-maker-thumbnail/a3079365d1a6e3d7d6919a03ae9eaf82.gif',
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Anya Forger",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              // Divider(),
              const SizedBox(
                height: 20,
              ),
              Padding(
                //一個Padding是一個項目
                padding: const EdgeInsets.only(left: 15),
                child: GestureDetector(
                  onTap: (() {
                    // Navigator.pop(
                    //	 context,
                    //	 new MaterialPageRoute(
                    //		 builder: (context) => new HomePageMain()));
                  }),
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(Icons.person),
                      SizedBox(
                        width: 150,
                        height: 50,
                        child: TextButton(
                          child: const Text(
                            "使用者檔案",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ExpansionTile(
                //下拉式
                title: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    Icon(CupertinoIcons.settings),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "設定",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                childrenPadding:
                    const EdgeInsets.only(left: 25), // children padding
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) => new VendorVenuePage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(
                            CupertinoIcons.waveform_circle_fill,
                            color: Colors.black87,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "音量",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            // This bool value toggles the switch.
                            value: switchValue_Volume,
                            activeColor: CupertinoColors.activeGreen,
                            onChanged: (bool? value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                switchValue_Volume = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) =>
                        //			 new VendorPhotographerPage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.camera_alt_outlined),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "鏡頭",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            // This bool value toggles the switch.
                            value: switchValue_Camera,
                            activeColor: CupertinoColors.activeGreen,
                            onChanged: (bool? value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                switchValue_Camera = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) =>
                        //			 new VendorCenematographyPage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.mic),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "麥克風",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            // This bool value toggles the switch.
                            value: switchValue_Mic,
                            activeColor: CupertinoColors.activeGreen,
                            onChanged: (bool? value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                switchValue_Mic = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push
                        // (
                        //	 context,
                        //	 new MaterialPageRoute
                        //(
                        //		 builder: (context) => new VendorMakeupPage()),
                        //);
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          const Icon(Icons.notifications),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "通知",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          ),
                          const Spacer(),
                          CupertinoSwitch(
                            // This bool value toggles the switch.
                            value: switchValue_Notify,
                            activeColor: CupertinoColors.activeGreen,
                            onChanged: (bool? value) {
                              // This is called when the user toggles the switch.
                              setState(() {
                                switchValue_Notify = value ?? false;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  //more child menu
                ],
              ),
              ExpansionTile(
                //下拉式
                title: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: const [
                    Icon(Icons.eco),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "葉子功能",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )
                  ],
                ),
                childrenPadding:
                    const EdgeInsets.only(left: 25), // children padding
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) =>
                        //			 new VendorPhotographerPage()));
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        //mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.warning),
                          SizedBox(
                            width: 200,
                            child: TextButton(
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Alert'),
                                  content: const Text('確定進行舉報'),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'Cancel'),
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () =>
                                          Navigator.pop(context, 'OK'),
                                      child: const Text('確定'),
                                    ),
                                  ],
                                ),
                              ),
                              child: const Text('舉報'),
                            ),
                          ),
                        ],
                        //const Spacer(),
                      ),
                    ),
                  ),
                  ExpansionTile(
                    //下拉式
                    title: Row(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: const [
                        Icon(Icons.people_alt),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "人員",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.black),
                        )
                      ],
                    ),

                    childrenPadding: const EdgeInsets.only(
                        top: 10, left: 25), // children padding
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: (() {
                            // Navigator.push(
                            //	 context,
                            //	 new MaterialPageRoute(
                            //		 builder: (context) => new VendorVenuePage()));
                          }),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Xian",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: (() {
                            // Navigator.push(
                            //	 context,
                            //	 new MaterialPageRoute(
                            //		 builder: (context) =>
                            //			 new VendorPhotographerPage()));
                          }),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            //mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Ping",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: GestureDetector(
                          onTap: (() {
                            // Navigator.push(
                            //	 context,
                            //	 new MaterialPageRoute(
                            //		 builder: (context) =>
                            //			 new VendorCenematographyPage()));
                          }),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Ting",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, bottom: 10),
                        child: GestureDetector(
                          onTap: (() {
                            // Navigator.push
                            // (
                            //	 context,
                            //	 new MaterialPageRoute
                            //(
                            //		 builder: (context) => new VendorMakeupPage()),
                            //);
                          }),
                          child: Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: const [
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Chavon",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black87),
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                      ),
                      //more child menu
                    ],
                  ),
                  //more child menu
                ],
              ),
            ],
          ),
        ),
      ),
      body: //const PanFunction() //原本的
          ///*
          PencilKit(
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
        backgroundColor: Color.fromARGB(255, 250, 250, 250).withOpacity(0.1),
        isOpaque: false,
      ),

      //*/
    );
  }
}

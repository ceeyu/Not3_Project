// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class FreeLeaf extends StatefulWidget {
  const FreeLeaf({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _FreeLeafState createState() => _FreeLeafState();
}

class _FreeLeafState extends State<FreeLeaf> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('葉子名稱'),
          ),
          actions: <Widget>[
            //越後面的button越右，由左往右的方向
            IconButton(
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
                                  builder: (BuildContext context) =>
                                      AlertDialog(
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
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Text(
                                  "Xian",
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                                const Spacer(),
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
        body: Container());
  }
}

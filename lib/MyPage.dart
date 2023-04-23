// ignore: file_names
//檔案匯入
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/screens/ChatPage.dart';
import 'package:flutter_project/screens/FruitsPage.dart';
import 'package:flutter_project/screens/LeafPage.dart';
import 'package:flutter_project/AnimationBottomBar.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});
  @override
  // ignore: library_private_types_in_public_api
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  int pageIndex = 0;
  List<Widget> pageItem = [];

  @override
  void initState() {
    super.initState();
    //PageItem代表三頁項目
    pageItem = [const ChatPage(), const LeafPage(), const FruitsPage()];
  }

  final List<BarItemData> barItems = [
    BarItemData(
        "聊天室", Icons.accessibility, const Color.fromARGB(212, 0, 255, 0)),
    BarItemData(
        "葉子", Icons.energy_savings_leaf, const Color.fromARGB(212, 0, 255, 0)),
    BarItemData("檢視果實", Icons.feed, const Color.fromARGB(212, 0, 255, 0))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Not3')),
        backgroundColor: Colors.green,
        elevation: 0.0, //陰影
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
                  children: [
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
              SizedBox(
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
                      Icon(Icons.person),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "使用者",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      )
                    ],
                  ),
                ),
              ),

              SizedBox(
                height: 10,
              ),

              ExpansionTile(
                //下拉式
                title: Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
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

                childrenPadding: EdgeInsets.only(left: 25), // children padding
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
                          Icon(
                            CupertinoIcons.waveform_circle_fill,
                            color: Colors.black87,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "音量",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
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
                        children: [
                          Icon(Icons.camera_alt_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "鏡頭",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
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
                        children: [
                          Icon(Icons.mic),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "麥克風",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: GestureDetector(
                      onTap: (() {
                        // Navigator.push(
                        //	 context,
                        //	 new MaterialPageRoute(
                        //		 builder: (context) => new VendorMakeupPage()),);
                      }),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(Icons.notifications),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "通知",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.black87),
                          )
                        ],
                      ),
                    ),
                  ),

                  //more child menu
                ],
              ),

              // SizedBox(
              // height: 10,
              // ),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: pageIndex,
        children: pageItem,
      ),
      bottomNavigationBar: AnimationBottomBar(
        barItemsData: barItems,
        barStyle: BarStyle(
            fontSize: 20.0, fontWeight: FontWeight.w400, iconSize: 30.0),
        changePageIndex: (int index) {
          setState(() {
            pageIndex = index; //跟隨不同頁面切換
          });
        },
      ),
    );
  }
}

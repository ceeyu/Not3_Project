# flutter系列
###### tags: `flutter`

# 壹、flutter相關鐵人賽
* [iOS Developer Learning Flutter](https://ithelp.ithome.com.tw/users/20117052/ironman/3216)
* [30 Days of Flutter (Day1): 學習如何在 Macbook Air M1 上安裝 Flutter](https://matters.news/@johnnymnotes/114923-30-days-of-flutter-day1-%E5%AD%B8%E7%BF%92%E5%A6%82%E4%BD%95%E5%9C%A8-macbook-air-m1-%E4%B8%8A%E5%AE%89%E8%A3%9D-flutter-bafyreida2zx6hrev6zqjzvevyvx44jmgg4qrtij73rrxv6ksx3i2gb5f3u)
* [Flutter---Google推出的跨平台框架，Android、iOS一起搞定](https://ithelp.ithome.com.tw/users/20119550/ironman/2221)
* [Flutter 30: from start to store](https://ithelp.ithome.com.tw/users/20152234/ironman/5606)
* [從零開始的Flutter世界](https://ithelp.ithome.com.tw/users/20118479/ironman/3025)
* [Dart 語言 - 開啟 Flutter 的鑰匙](https://ithelp.ithome.com.tw/users/20129264/ironman/3048)
* [「Google Flutter」學習筆記](https://ithelp.ithome.com.tw/users/20120243/ironman/3730)
* [30天手滑用Google Flutter解鎖Hybrid App成就](https://ithelp.ithome.com.tw/users/20120028/ironman/2263)



# 貳、flutter Tutorial
* [《Flutter实战·第二版》](https://book.flutterchina.club/chapter3/input_and_form.html#_3-5-1-textfield)

* [Flutter Formosa](https://medium.com/flutter-formosa)
# 參、Widget相關

* [Flutter Samples](https://flutter.github.io/samples/#)

![](https://i.imgur.com/iefuebG.png)

* [Basic widgets](https://docs.flutter.dev/development/ui/widgets/basics)

![](https://i.imgur.com/cxvKG75.png)



## Widget Catalog 
* 可以看到更大框架的layout或套件種類

![](https://i.imgur.com/oaaQMFP.png)

[Widget catalog](https://docs.flutter.dev/development/ui/widgets)

* Widget Tree

![](https://i.imgur.com/oLJ5Fer.png)

## input label
![](https://i.imgur.com/U6oMpWI.png)

[input label](https://api.flutter.dev/flutter/material/InputDecoration-class.html)


## List
List view.builder 是給"大量"垂直資料的
[Day 24：ListView 列表元件](https://ithelp.ithome.com.tw/articles/10226338)

## Listile
* 用"leading: "可以加icon
![](https://i.imgur.com/QUDtKMP.png)

![](https://i.imgur.com/uC5dtbV.png)

* 參考資料: [Listile Tutorial](https://blog.logrocket.com/how-add-list-tile-flutter/)

## Drawer 參考
* [Menu選單-Drawer & Routes](https://ithelp.ithome.com.tw/articles/10221002)
    * [Github](https://github.com/chienhuikuo/Flutter_2020ironman/blob/master/lib/drawer.dart)

* [GeeksForGeeksAdvanced範例](https://www.geeksforgeeks.org/flutter-advanced-drawer/)

## Flutter – CircleAvatar Widget
* 參考: [CircleAvatar](https://www.geeksforgeeks.org/flutter-circleavatar-widget/)
# 肆、線上編譯器"Dartpad"

# 伍、Package

* [pub.dev](https://pub.dev/)

# 陸、實機執行
* [如何將 flutter 執行在模擬器與實機上](https://kulan.dev/b200602/#setp-4-%E5%9F%B7%E8%A1%8C%E5%9C%A8-ios-%E5%AF%A6%E6%A9%9F)

* [Where in Settings can I allow apps from a developer (myself)](https://developer.apple.com/forums/thread/660288)

# 柒、學習紀錄
## 位置相關
![](https://i.imgur.com/kKANhbr.png)

* leading: 左上角，在Appbar()裡面

![](https://i.imgur.com/8NsTAZC.png)

* action: 右上角，在Appbar()裡面

![](https://i.imgur.com/DTq9kQH.png)

* drawer: 左上角，且在appbar()外面

## Cookbook範例[Cookbook](https://docs.flutter.dev/cookbook)
* Snackbar: [Display a snackbar](https://docs.flutter.dev/cookbook/design/snackbars)
![](https://i.imgur.com/fCzNwnP.png)

* TapBars Demo: [Work with tabs](https://docs.flutter.dev/cookbook/design/tabs)
![](https://i.imgur.com/YTQ8NU6.png)


## 屬性相關
* elevation: 陰影(0:無陰影~100:很深陰影)

# 玖、意外設定
## 載package
* 開發人員模式: 在載"google_fonts"時更改
    * [google_fonts](https://pub.dev/packages/google_fonts/install): Package頁面
    * [Export fonts from a package](https://docs.flutter.dev/cookbook/design/package-fonts): Cookbook教學使用
    * [Goole Fonts頁面](https://fonts.google.com/)
![](https://i.imgur.com/QxyNNL8.png)

![](https://i.imgur.com/Eqfi4jQ.png)

* yaml裡面的更動
    * (1)先去google font載想要的fonts
    * (2)將檔案放到project的yaml裡面(目前自己叫awesome_project)
    * (3)在需要的檔案裏面import
    * (4)使用fonts
* Downloads頁面

![](https://i.imgur.com/JboeU79.png)

* 載完family畫面

![](https://i.imgur.com/urIHIEZ.png)

* yaml圖片 
![](https://i.imgur.com/d00XrOd.png)

* import頁面
![](https://i.imgur.com/aD6gwxc.png)

* 使用畫面
![](https://i.imgur.com/AXIk0Zn.png)


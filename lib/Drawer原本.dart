/*
drawer: Drawer(
        backgroundColor: Colors.white,
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green,
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://memeprod.ap-south-1.linodeobjects.com/user-maker-thumbnail/a3079365d1a6e3d7d6919a03ae9eaf82.gif',
                    ),
                    fit: BoxFit.fill,
                  )),
              child: Text('滑開:Where is Title',
                  style: TextStyle(
                    fontFamily: 'Raleway', //套用字形
                  )),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('使用者'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer

                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('設定'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer

                Navigator.pop(context); //更新state並關閉drawer
              },
            ),
          ],
        ),
        
      ),
*/
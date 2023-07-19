import 'package:flutter_project2/models/post_test.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _senderaccountcontroller =
      TextEditingController();
  final TextEditingController _recieverpasswordcontroller =
      TextEditingController();
  //final TextEditingController _chatdatacontroller = TextEditingController();
  Future<List<dynamic>>? _futureLogin;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gardeners Chating Record (Post) Post'),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8),
        child: (_futureLogin == null) ? buildColumn() : buildFutureBuilder(),
      ),
    );
  }

  Column buildColumn() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _senderaccountcontroller,
            decoration: const InputDecoration(
              hintText: 'Enter Sender Account',
              labelText: "傳送者帳號",
              prefixIcon: Icon(Icons.person),
            ),
          ),
        ),
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _recieverpasswordcontroller,
            //obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Enter Recever Account',
              labelText: "接收者帳號",
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ),
        /*
        SizedBox(
          width: 300,
          height: 80,
          child: TextField(
            controller: _chatdatacontroller,
            //obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Enter chat data',
              labelText: "傳送訊息",
              prefixIcon: Icon(Icons.lock),
            ),
          ),
        ),
        */
        SizedBox(
          width: 150,
          height: 48,
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                _futureLogin = createLogin(_senderaccountcontroller.text,
                    _recieverpasswordcontroller.text);
              });
            },
            child: const Text('Show'),
          ),
        ),
      ],
    );
  }

  FutureBuilder<List<dynamic>> buildFutureBuilder() {
    return FutureBuilder<List<dynamic>>(
      future: _futureLogin,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasData) {
          return ListView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              final item = snapshot.data![index];
              return ListTile(
                isThreeLine: true,
                title: Text('sender_id:${item['sender_firstname']}'),
                subtitle: Text( 'receiver_firstname: :${item['receiver_firstname']}' 'send_time:${item['send_time']}' 'chat_data :${item['chat_data']}'),

                
              );
            },
          );
        } else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        } else {
          return const Text('No data available');
        }
      },
    );
  }
}

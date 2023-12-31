import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff008069),
        onPressed: () {},
        child: const Icon(
          Icons.call,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(0xff008069),
              radius: 24,
              child: Icon(
                Icons.link,
                color: Colors.black,
                size: 30,
              ),
            ),
            title: Text(
              "Create Call link",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Share a link for your whatsapp call"),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Recent",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage: AssetImage("asset/1.png"),
                  ),
                  title: Text("Shaquib nawaz"),
                  subtitle: Text("Yesterday, 10:30 PM"),
                  trailing: Icon(Icons.call, color: Color(0xff008069),),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

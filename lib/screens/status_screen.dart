import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const ListTile(
            leading: CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage("asset/1.png"),
            ),
            title: Text("My Status"),
            subtitle: Text("Tap Here To Update The Status"),
          ),
          const SizedBox(
            height: 25,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20, bottom: 20),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text("Viewed Updates"),
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
                  subtitle: Text("Today 12:30 PM"),
                );
              },
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          RichText(
            text: const TextSpan(
              text: "Your Status Updates Are End To End Encrypted",
              style: TextStyle(
                color: Color(0xff008069),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Column(
                children: [
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff008069),
                    child: const Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  FloatingActionButton(
                    onPressed: () {},
                    backgroundColor: const Color(0xff008069),
                    child: const Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

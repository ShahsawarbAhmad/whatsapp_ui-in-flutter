import 'package:flutter/material.dart';

class WhatsappScreen extends StatelessWidget {
  const WhatsappScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Whatsapp"),
          centerTitle: false,
          bottom: const TabBar(tabs: [
            Tab(child: Icon(Icons.camera)),
            Tab(child: Text("chat")),
            Tab(child: Text("Status")),
            Tab(child: Text("Call")),
          ]),
          actions: [
            const Icon(Icons.search),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
              icon: const Icon(Icons.more_vert_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(value: "1", child: Text("NewGroupp")),
                const PopupMenuItem(value: "2", child: Text("Setting")),
                const PopupMenuItem(value: "3", child: Text("Logout")),
              ],
            ),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body: TabBarView(children: [
          const Text("camera"),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/two.jpg"),
                ),
                title: Text("Shahsawar Ahmad"),
                subtitle: Text("Where are you doing?"),
                trailing: Text("1:50"),
              );
            },
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text("Recent Uptadets"),
                      ListTile(
                          leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                  color: Colors.green,
                                  width: 3,
                                )),
                            child: const CircleAvatar(
                              backgroundImage: AssetImage("assets/two.jpg"),
                            ),
                          ),
                          title: const Text("Shahsawar Ahmad"),
                          subtitle: const Text("35 ago")),
                    ],
                  ),
                );
              } else {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // const Text("Viewed Updated"),
                    ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Colors.green,
                                width: 3,
                              )),
                          child: const CircleAvatar(
                            backgroundImage: AssetImage("assets/two.jpg"),
                          ),
                        ),
                        title: const Text("Shahsawar Ahmad"),
                        subtitle: const Text("35 ago")),
                  ],
                );
              }
            },
          ),
          ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  backgroundImage: AssetImage("assets/two.jpg"),
                ),
                title: const Text("Shahsawar Ahmad"),
                subtitle: Text(index / 2 == 0
                    ? "You missed audio call"
                    : "You missed video call"),
                trailing: Icon(index / 2 == 0 ? Icons.phone : Icons.video_call),
              );
            },
          ),
        ]),
      ),
    );
  }
}

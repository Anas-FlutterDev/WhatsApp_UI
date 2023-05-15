import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('WhatsApp'),
            bottom: const TabBar(tabs: [
              Tab(
                child: Icon(Icons.people_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              ),
            ]),
            actions: [
              Icon(Icons.camera_alt),
              SizedBox(width: 30),
              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (context) => const [
                        PopupMenuItem(value: '1', child: Text('New group')),
                        PopupMenuItem(value: '2', child: Text('New broadcast')),
                        PopupMenuItem(
                            value: '3', child: Text('Linked devices')),
                        PopupMenuItem(
                            value: '4', child: Text('Starred messages')),
                        PopupMenuItem(value: '5', child: Text('Settings')),
                      ])
            ],
          ),
          body:

              //for chat

              TabBarView(children: [
            Text('Community'),
            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1043474/pexels-photo-1043474.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Thomas Shellby'),
                      subtitle: Text('Han jee sangi jee kdr ho'),
                      trailing: Text('8:36 pm'),
                    );
                  }),
            ),

            //for status
            ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: Color.fromARGB(255, 46, 151, 49),
                              width: 3)),
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1197132/pexels-photo-1197132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                    ),
                    title: Text('Auntie'),
                    subtitle: Text('10 minutes ago'),
                  );
                }),

            //for call

            Expanded(
              child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return ListTile(
                      leading: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://images.pexels.com/photos/1933873/pexels-photo-1933873.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                      ),
                      title: Text('Professor'),
                      subtitle: Text(index / 2 == 0
                          ? '57 minutes ago'
                          : '(2) yesterday,10:0 PM'),
                      trailing: Icon(
                        index / 2 == 0 ? Icons.call : Icons.video_call,
                        color: Color.fromARGB(255, 49, 146, 52),
                      ),
                    );
                  }),
            )
          ]),
        ));
  }
}

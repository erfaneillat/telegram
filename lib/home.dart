import 'package:flutter/material.dart';
import 'package:telegram/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: basecolor,
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
        backgroundColor: appbarcolor,
        title: const Text('Telegram'),
      ),
      drawer: Drawer(
        backgroundColor: appbarcolor,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/me.jpg'), fit: BoxFit.cover),
                ),
              ),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/me.jpg'), fit: BoxFit.cover),
              ),
              accountName: const Text('Erfan'),
              accountEmail: const Text('+989308694145'),
            ),
            const mylisttile(
              icon: Icons.people_alt_outlined,
              title: 'New Group',
            ),
            const mylisttile(
              icon: Icons.people,
              title: 'Contact',
            ),
            const mylisttile(
              icon: Icons.call,
              title: 'Calls',
            ),
            const mylisttile(
              icon: Icons.emoji_people,
              title: 'People Nearby',
            ),
            const mylisttile(
              icon: Icons.save,
              title: 'Saved Message',
            ),
            const mylisttile(
              icon: Icons.settings,
              title: 'Settings',
            ),
            const Divider(),
            const mylisttile(
              icon: Icons.people,
              title: 'Invite Freinds',
            ),
            const mylisttile(
              icon: Icons.help_outline,
              title: 'Telegram Features',
            ),
          ],
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '19:20',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue[400],
                      ),
                      child: Text(
                        '1',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                tileColor: basecolor,
                subtitle: const Text(
                  'best musics download',
                  style: TextStyle(color: Colors.grey),
                ),
                leading: Container(
                  width: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage('assets/me.jpg'), fit: BoxFit.cover),
                  ),
                ),
                title: const Text(
                  'Music Channale',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
                height: 0.5,
                color: Colors.grey[800],
              )
            ],
          );
        },
      ),
    );
  }
}

class mylisttile extends StatelessWidget {
  const mylisttile({Key? key, required this.icon, required this.title})
      : super(key: key);

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.grey,
      ),
      title: Text(
        title,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 15),
      ),
    );
  }
}

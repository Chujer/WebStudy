import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red)
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Info App',
          style: TextStyle(color: Theme
              .of(context)
              .colorScheme
              .primary),
        ),
        bottom: TabBar(
          controller: _controller,
          tabs: [
            Tab(text: 'Artists',),
            Tab(text: 'Albums',),
            Tab(text: 'Songs',),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: TabBarView(
          controller: _controller,
          children: [
            TabContent(
              title : 'Altist',
              items : [
                ContentItem(
                    name : 'Coldplay1',
                    icon:Icons.group,
                    description : 'ColdPlay is a British rock band that was formed in London in 1996'
                ),
                ContentItem(
                    name : 'Coldplay2',
                    icon:Icons.group,
                    description : 'ColdPlay is a British rock band that was formed in London in 1996'
                ),
              ],
            ),
            TabContent(
              title : 'Album',
              items : [
                ContentItem(
                    name : 'Parachutes1',
                    icon:Icons.album,
                    description : 'Parachutes is the debut studio album by British rock band'
                ),
                ContentItem(
                    name : 'Parachutes2',
                    icon:Icons.album,
                    description : 'Parachutes is the debut studio album by British rock band'
                ),
              ],
            ),
            TabContent(
              title : 'Song',
              items : [
                ContentItem(
                    name : 'Yellow1',
                    icon:Icons.music_note,
                    description : 'Yellow is a song by British rock band Coldplay.'
                ),
                ContentItem(
                    name : 'Yellow2',
                    icon:Icons.music_note,
                    description : 'Yellow is a song by British rock band Coldplay.'
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


class TabContent extends StatelessWidget {
  final String title;
  final List<ContentItem> items;

  const TabContent({super.key,
    required this.title,
    required this.items
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder : (context, index){
        return Card(
          child: Container(
            child: ListTile(
              leading: Icon(items[index].icon),
              title: Text(items[index].name),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
        );
      }
    );
  }
}

class ContentItem{
  final String name;
  final IconData icon;
  final String description;

  ContentItem({required this.name, required this.icon, required this.description});
}
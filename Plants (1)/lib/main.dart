import 'package:flutter/material.dart';
import 'package:plants/plantDetail.dart';
import 'plantDetail.dart';

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

int presentindex = 0;

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey,
          currentIndex: presentindex,
          onTap: (index) {
            setState(() {
              presentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xffdbd6d6),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.heart_broken,
                  color: Color(0xffdbd6d6),
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Color(0xffdbd6d6),
                ),
                label: '')
          ]),
      appBar: AppBar(
        title: Text(
          'All plants',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.search, size: 30)],
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Houseplants',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                child:
                    Text('All', style: TextStyle(fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Succulents',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('In pots',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('Dried flowers',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Text('By popularity'),
              Icon(Icons.arrow_downward),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://garden.org/plants/photo/792738/'),
                      ),
                    ),
                  ),
                  title: Text('Adromiscus',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('16 cm'),
                      SizedBox(height: 5),
                      Text('16.5 ')
                    ],
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text('4.5',
                        style: TextStyle(color: Colors.orange, fontSize: 15))
                  ]),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Detail()));
                },
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://garden.org/plants/photo/792738/'),
                      ),
                    ),
                  ),
                  title: Text('Echeveria',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('18 cm'),
                      SizedBox(height: 5),
                      Text('16.5 ')
                    ],
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text('4.8',
                        style: TextStyle(color: Colors.orange, fontSize: 15))
                  ]),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: ListTile(
                  leading: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://garden.org/plants/photo/792738/'),
                      ),
                    ),
                  ),
                  title: Text('Haworthia',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('19 cm'),
                      SizedBox(height: 5),
                      Text('16.5 ')
                    ],
                  ),
                  trailing: Row(mainAxisSize: MainAxisSize.min, children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                    ),
                    Text('4.2',
                        style: TextStyle(color: Colors.orange, fontSize: 15))
                  ]),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}

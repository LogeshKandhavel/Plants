import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 400,
            height: 200,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.rectangle,
              // image: DecorationImage(
              //   fit: BoxFit.cover,
              //    image: NetworkImage('https://garden.org/plants/photo/792738/'),
              // ),
            ),
          ),
          ListTile(
            title: Text('Echeveria',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
            subtitle: Row(mainAxisSize: MainAxisSize.min, children: [
              Icon(
                Icons.star,
                color: Colors.orange,
              ),
              SizedBox(width: 5),
              Text('4.5', style: TextStyle(color: Colors.orange, fontSize: 15))
            ]),
            trailing: Text('19.5', style: TextStyle(fontSize: 20)),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text('Choose Size',
                style: TextStyle(fontWeight: FontWeight.bold)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: Text('18 cm',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('20 cm',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('24 cm',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('30 cm',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Description',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
                'At home Echeveria feels great and looks great,and with proper care, even pleases with flowers'),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.heart_broken_sharp,
                  size: 50,
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Add to cart',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10))),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

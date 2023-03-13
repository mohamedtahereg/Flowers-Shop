import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appbarGreen,
        title: const Text("Home"),
        actions: [
          Row(
            children: [
              Stack(clipBehavior: Clip.none, children: [
                IconButton(
                    onPressed: () {},
                    padding: EdgeInsets.all(15),
                    icon: const Icon(Icons.add_shopping_cart)),
                Positioned(
                  top: 1,
                  left: -1,
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 99, 235, 156),
                        shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Text(
                        "7",
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
              ]),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: Text(
                  "\$ 1300",
                  style: const TextStyle(fontSize: 17),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: const Drawer(
        // backgroundColor: appbarGreen,
        width: 280,
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Moahemd"),
              accountEmail: Text("MohTaher@gmail.com"),
              currentAccountPicture: CircleAvatar(
                radius: 55,
                backgroundImage: NetworkImage(
                    "https://scontent.fcai19-1.fna.fbcdn.net/v/t39.30808-6/274165476_1969695713215018_4844269714640165981_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=09cbfe&_nc_ohc=2RQzwRt5cVkAX8X8jX6&_nc_ht=scontent.fcai19-1.fna&oh=00_AfAW8BdLpmdnysioFXErEDDp-zuY1Ye702JGg4Ib5Q7tcA&oe=6414152F"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:ui_2/widgets/appBar.dart';
import 'package:ui_2/widgets/circle.dart';
import 'package:ui_2/widgets/stack.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 30),
              child: titles(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAa("Name in", "http://source.unsplash.com/random/1"),
                  CircleAa("Sale", "http://source.unsplash.com/random/2"),
                  CircleAa("Brand", "http://source.unsplash.com/random/3"),
                  CircleAa("Clothing", "http://source.unsplash.com/random/4"),
                  CircleAa("Shoes", "http://source.unsplash.com/random/5"),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.35,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://source.unsplash.com/random/1",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  bottom: 110,
                  left: 120,
                  
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Modern",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 300),
                  child: Stcks(),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 360, left: 120),
                  child: Text(
                    "Discover new styles",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 370, left: 140),
                  child: Text(
                    " .   .   .   .",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: Column(
                children: [
                  Grid("1", "2"),
                


                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row Grid(String son1, String son2) {
    return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width:  MediaQuery.of(context).size.width * 0.45,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(
                            "https://source.unsplash.com/random/son1",
                          ),
                          fit: BoxFit.cover),
                  ),
                ),
                    ),
                 Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  width:  MediaQuery.of(context).size.width * 0.45,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://source.unsplash.com/random/son2",
                        ),
                        fit: BoxFit.cover),
                  ),
                ),
                







                  ],
                );
  }

  Column CircleAa(String names, String pictures) {
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(pictures),
          radius: 30,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("$names"),
        ),
      ],
    );
  }
}

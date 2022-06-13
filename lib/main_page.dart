import 'dart:convert';

// import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'colors.dart' as color;

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 15),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 85, left: 20),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: color.AppColor.homePageTitle,
                    size: 30,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 300,
                      child: Stack(
                        children: [
                          Container(
                            height: 395,
                            width: 360,
                            margin: const EdgeInsets.only(
                              top: 10,
                              bottom: 0,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.redAccent.withOpacity(0.2),
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                                bottomLeft: Radius.circular(30),
                              ),
                              image: const DecorationImage(
                                image: AssetImage("assets/watch.jpg"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Container(
                            height: 315,
                            width: 270,
                            // color: Colors.redAccent,
                            margin: const EdgeInsets.only(left: 10, top: 20),
                            padding: const EdgeInsets.only(top: 60, left: 30),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Nixon",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: color.AppColor.cardTitle,
                                  ),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Men's C39 Leather White Dial",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: color.AppColor.cardTitle,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    left: 50,
                  ),
                  child: Text(
                    "\$165.98",
                    style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.watchColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Icon(
                    Icons.loop,
                    color: color.AppColor.watchColor,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Brand Type",
                    style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Strap",
                    style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.profileBackground,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 30,
              ),
              child: Divider(
                color: Colors.black38,
                thickness: 0.5,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Brand Width",
                    style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "18 min",
                    style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.profileBackground,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 30,
              ),
              child: Divider(
                color: Colors.black38,
                thickness: 0.5,
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50),
                  child: Text(
                    "Bezel Material",
                    style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Expanded(child: Container()),
                Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: Text(
                    "Stainless Steel",
                    style: TextStyle(
                      fontSize: 15,
                      color: color.AppColor.profileBackground,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 50,
                right: 30,
              ),
              child: Divider(
                color: Colors.black38,
                thickness: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, right: 30, bottom: 15),
              child: Text(
                "The Nixon C39 Leather series features stainless steel 39mm case, with a fixed bezel, a white dial and a scratch resistant.",
                style: TextStyle(
                  fontSize: 15,
                  color: color.AppColor.profileBackground,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.only(left: 50),
              child: Text(
                  "2 years WatchCenter Warranty.",
                  style: TextStyle(
                    fontSize: 15,
                    color: color.AppColor.profileBackground,
                    fontWeight: FontWeight.w600,
                  ),
                ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 350,
              padding: const EdgeInsets.only(left: 30, right: 10),
              child: RaisedButton(
                padding: const EdgeInsets.all(18),
                color: color.AppColor.watchColor.withOpacity(0.3),
                onPressed: () {  },
                child: const Text(
                  'ADD TO BAG        +',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

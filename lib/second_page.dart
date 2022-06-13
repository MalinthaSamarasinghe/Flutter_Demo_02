import 'package:flutter/material.dart';
import 'colors.dart' as color;

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: color.AppColor.homePageBackground,
        body: Container(
          padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    margin: const EdgeInsets.only(top: 10, left: 0, right: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: const DecorationImage(
                        image: AssetImage("assets/profile.jpg"),
                        // fit: BoxFit.fill,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: color.AppColor.profileBackground,
                          blurRadius: 40,
                          offset: const Offset(5, 6),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          top: 15,
                        ),
                        child: Text(
                          "Welcome back, Marvin",
                          style: TextStyle(
                            fontSize: 18,
                            color: color.AppColor.homePageTitle,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Your financial situation is looking good!",
                        style: TextStyle(
                          fontSize: 14,
                          color: color.AppColor.profileBackground,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Expanded(child: Container()),
                  Container(
                    padding: const EdgeInsets.only(
                      bottom: 30,
                    ),
                    child: Icon(
                      Icons.more_vert,
                      color: color.AppColor.homePageTitle,
                      size: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                ),
                child: const LinearProgressIndicator(
                  color: Colors.blueAccent,
                  value: 10.0,
                  minHeight: 8.0,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Beginner Level",
                    style: TextStyle(
                      fontSize: 14,
                      color: color.AppColor.profileBackground,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Expanded(child: Container()),
                  Text(
                    "XP 380/500",
                    style: TextStyle(
                      fontSize: 14,
                      color: color.AppColor.profileDetail,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.only(left: 5, right: 5),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: TabBar(
                    labelStyle: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w700,
                    ),
                    labelPadding: EdgeInsets.only(left: 25, right: 25),
                    isScrollable: true,
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    indicatorColor: Colors.deepOrangeAccent,
                    indicatorWeight: 4.0,
                    tabs: [
                      Tab(
                        text: "Today",
                      ),
                      Tab(
                        text: "Monthly",
                      ),
                      Tab(
                        text: "Yearly",
                      ),
                      Tab(
                        text: "Future",
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 429,
                width: double.maxFinite,
                margin: const EdgeInsets.only(
                  top: 5,
                ),
                // color: Colors.black,
                child: TabBarView(
                  children: [
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(1.0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(1.0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(1.0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                    ListView(
                      scrollDirection: Axis.vertical,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.greenAccent.withOpacity(1.0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.playlist_add_check_circle_outlined,
                                    color: color.AppColor.homePageTitle,
                                    size: 45,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "Small stuff adds up!",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      bottom: 12,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Last month, you mode \$42 transactions less than \$5, spending a total of \$147. Want to cut down on frivolous spending?",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 35,
                                    width: 130,
                                    margin: const EdgeInsets.only(
                                        left: 55.0, top: 6),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: color.AppColor.cardTitle,
                                    ),
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "SETUP A GOAL",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w700,
                                          color: color.AppColor.homePageTitle,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite_border_sharp,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 1,
                            right: 1,
                          ),
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          height: 200.0,
                          // color: Colors.blueAccent,
                          decoration: BoxDecoration(
                            color: Colors.pinkAccent.withOpacity(0.7),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      bottom: 10,
                                    ),
                                    child: Icon(
                                      Icons.playlist_add_check_circle_outlined,
                                      color: color.AppColor.homePageTitle,
                                      size: 45,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                        bottom: 12, top: 10),
                                    child: Text(
                                      "You're Doing well\npaying off your loans",
                                      style: TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 0,
                                    ),
                                    child: Text(
                                      "09-06-2018",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: color.AppColor.cardTitle,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                padding: const EdgeInsets.only(
                                  left: 55,
                                ),
                                child: Text(
                                  "Since this time last year, you've contributed \$5,5678 toward your Sallie Mae Student Loan. Great work!",
                                  style: TextStyle(
                                    fontSize: 17,
                                    color: color.AppColor.cardTitle,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(child: Container()),
                                  Icon(
                                    Icons.favorite,
                                    color: color.AppColor.cardTitle,
                                    size: 40,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

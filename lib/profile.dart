import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class profile extends StatelessWidget {
  profile({super.key});

  static const String routeName = "profile";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 150,
          backgroundColor: Colors.transparent,
          elevation: 0,
          // leadingWidth: 80,
          leading: Container(
            margin: EdgeInsets.all(5),
              child: Container(width: 50,
                  height: 100,
                  child: Image.asset("assets/images/bnt.png"))),
          title: Text(
            "Hallo,jade\n Ready to work out",
            style: TextStyle(color: Colors.black),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: Icon(
                Icons.notification_add,
                color: Colors.black,
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Color(0xffF8F9FC),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  )),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.favorite,
                              color: Color(0xff717BBC),
                            ),
                            Text("Heart Rate")
                          ],
                        ),
                        Text("81bpm")
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: 2,
                    height: 50,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.list,
                              color: Color(0xff717BBC),
                            ),
                            Text("To do")
                          ],
                        ),
                        Text("32.5")
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.grey,
                    width: 2,
                    height: 50,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Color(0xff717BBC),
                            ),
                            Text("calo")
                          ],
                        ),
                        Text("1000 cal")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    "Workout programs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 20,
                  ),
                  Expanded(child: Text("All Type",style: TextStyle(color: Color(0xff717BBC) ),)),
                  Expanded(child: Text("Full body ")),
                  Expanded(child: Text("upper")),
                  Expanded(child: Text("Lower"))
                ],
              ),
            ),
           // Divider(
           //   indent: 10,
           //   endIndent: 200,
           // ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(color: Colors.black12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        child: Center(child: Text("7 days")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Morning yoga",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Improve mental focus."),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.lock_clock),
                          SizedBox(
                            width: 5,
                          ),
                          Text("30 min")
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [Image.asset("assets/images/practise.png")],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(color: Colors.black12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 20,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.white),
                        child: Center(child: Text("7 days")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Morning yoga",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Improve mental focus."),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Icon(Icons.lock_clock),
                          SizedBox(
                            width: 5,
                          ),
                          Text("30 min")
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [Image.asset("assets/images/practise.png")],
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: BottomNavigationBar(items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color:  Color(0xff717BBC),
              ),
              label: "",
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.send,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.calendar_month,
                  color: Colors.black,
                ),
                label: ""),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                label: ""),
          ]),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class home extends StatelessWidget {
  CarouselController _carouselController = CarouselController();
  PageController _page = PageController(viewportFraction: .8, keepPage: true);

  static const String routeName = "home";

  home({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("assets/images/logo.png"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(
              Icons.notification_add,
              color: Colors.black,
              size: 25,
            ),
          )
        ],
        title: Text(
          "Mody",
          style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hello, Sara Rose"),
            SizedBox(
              height: 10,
            ),
            Text("How are you feeling today ?"),
            Row(
              children: [
                Expanded(child: Image.asset("assets/images/love.png")),
                Expanded(child: Image.asset("assets/images/happy.png")),
                Expanded(child: Image.asset("assets/images/sad.png")),
                Expanded(child: Image.asset("assets/images/happy.png")),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Featured"),
                  Spacer(),
                  Text("seeMore"),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            CarouselSlider(
              carouselController: _carouselController,
              items: [
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffECFDF3),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Positive Vibes"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Boost your mood with positive vibes"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.play_circle,
                                    color: Colors.greenAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("10 min")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset("assets/images/char.png")],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Color(0xffECFDF3),
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Positive Vibes"),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Boost your mood with positive vibes"),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.play_circle,
                                    color: Colors.greenAccent,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text("10 min")
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Image.asset("assets/images/char.png")],
                        ),
                      )
                    ],
                  ),
                ),
              ],
              options: CarouselOptions(
                aspectRatio: 15 / 7,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                enlargeCenterPage: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInBack,
                enableInfiniteScroll: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SmoothPageIndicator(
                  controller: _page, // PageController
                  count: 3,
                  effect: WormEffect(), // your preferred effect
                  onDotClicked: (index) {}),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Text("Excersises"),
                  Spacer(),
                  Text("SeeMore"),
                  Icon(Icons.arrow_forward)
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),

            Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color:Color(0xffF9F5FF),
borderRadius: BorderRadius.all(Radius.circular(15))
                    ),
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/frames.png"),
                        SizedBox(width: 15,),
                        Text("Relaxation")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                      height: 50,
                    decoration: BoxDecoration(
                    color: Color(0xffFDF2FA),
    borderRadius: BorderRadius.all(Radius.circular(15))
    ),

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/medation.png"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Medadtions"),
                    ],
                  ),
                ))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
color: Color(0xffFFFAF5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/yogo.png"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("Relaxation")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                Expanded(
                    child: Container(height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                        color: Color(0xffF0F9FF)
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/person.png"),   SizedBox(
                        width: 10,
                      ),
                      Text("Medadtions"),
                    ],
                  ),
                ))
              ],
            ),

          ],
        ),
      ),
      bottomNavigationBar:
      BottomAppBar(
        child: BottomNavigationBar(
            items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,), label: "",),
            BottomNavigationBarItem(icon: Icon(Icons.grid_4x4,color: Colors.black,), label: ""),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month,color: Colors.black,), label: ""),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,), label: ""),
        
        
        ]),
      )
    );
  }
}

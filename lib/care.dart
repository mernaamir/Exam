import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/widgets.dart';


class care extends StatelessWidget{

  care ({super.key});
  static const String routeName="care";
  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Scaffold(
      body: Column(
        children: [
          SizedBox(height: 20,),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
      Image.asset("assets/images/setting.png",width: 40,),
          Text("AliceCare",style: TextStyle(fontSize: 25),)
        ],
      ),
        Container(
          padding: EdgeInsets.all(16),
          child: TextField(

            decoration: InputDecoration(
              labelText: 'Search,Videos<Audio and More ....',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey,),

              ),
              prefixIcon: Icon(Icons.search),

            ),
          ),
        ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width:90,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  color:Color(0xffF4EBFF),

                ),

                child: Center(child: Text("Discover",style: TextStyle(color: Color(0xff6941C6),fontSize: 18),)),),
              Container(
                width:90,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  color:Color(0xffE4E7EC),

                ),

                child: Center(child: Text("Discover",style: TextStyle(color: Colors.grey,fontSize: 18),)),),
              Container(
                width:90,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  color:Color(0xffE4E7EC),

                ),

                child: Center(child: Text("Discover",style: TextStyle(color: Colors.grey,fontSize: 18),)),),



              Container(
                width:90,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius:BorderRadius.all(Radius.circular(20)),
                  color:Color(0xffE4E7EC),

                ),

                child: Center(child: Text("Discover",
                  style: TextStyle(color: Colors.grey,fontSize: 18),)),),

            ],
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(children: [
              Text("Hot topics",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              Spacer(),
              Text("see all",style: TextStyle(color: Color(0xff5925DC),fontSize: 20),),
              Icon(Icons.arrow_forward,color: Color(0xff5925DC),size: 19,)
            ],),
          ),
          CarouselSlider(
            carouselController: _carouselController,
            items: [
              Stack(
              children: [
                Image.asset("assets/images/lady2.jpeg"),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     Container(
                       decoration: BoxDecoration(
                         color: Color(0xffFEE4E2),
                         borderRadius:BorderRadius.all(Radius.circular(20)),

                       ),
                       width:80,

                         child: Center(child: Text("Cycle",style: TextStyle(fontSize: 20,color: Color(0xff912018)),)))
                   ],
                  ),
                      SizedBox(height: 12,),
                             Text("How to take care of Menstrual Hygiene during Menstrual Cycle",style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],),
                )


              ],
              ),
              Stack(
                children: [
                  Image.asset("assets/images/lady.jpeg"),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                        decoration: BoxDecoration(
                        borderRadius:BorderRadius.all(Radius.circular(20)),
                          color: Color(0xffFEF0C7),
      ),

                                width:100,
                                padding: EdgeInsets.all(3),

                                child: Center(child: Text("SELF-CARE",style: TextStyle(color: Color(0xff93370D)),)))
                          ],
                        ),
                        SizedBox(height: 12,),
                        Text("10 Easy Self-Care Ideas That Can Help Boost Your Health",style: TextStyle(color: Colors.white,fontSize: 16),)
                      ],),
                  )


                ],
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
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text("Get Tips",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              ),
            ],
          ),


          Container(
            margin: EdgeInsets.symmetric(horizontal: 16),
            color: Color(0xffF2F4F7),
            child: Row(

              children: [

                Column(
                  children: [
                    SizedBox(width: 10,),

                    Image.asset("assets/images/Dctor.png")
                  ],
                ),
                SizedBox(width: 70,),
                Column(

                  children: [
                    Text("Connect with doctors & \n get suggestions",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                    SizedBox(height: 20,),
                    Text("Connect now and get\n expert insights "),
                    SizedBox(height: 20,),

                    Container(
                      width: 100,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Color(0xff7F56D9),
                        borderRadius: BorderRadius.all(Radius.circular(16))
                      ),
                      child: Center(child: Text("view detail",style: TextStyle(color: Colors.white,fontSize: 16),)),
                    ),

                  ],


                )
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Text("Cycle Phases and Period",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Spacer(),
                Text("See all",style: TextStyle(color: Color(0xff5925DC),fontSize: 18),),
                Icon(Icons.arrow_forward,color: Color(0xff5925DC) ,size: 19,)
              ],
            ),
          )
        ],
        


      ),
          bottomNavigationBar:
          BottomAppBar(
            child: BottomNavigationBar(
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.calendar_month,color: Colors.black), label: "Today",),
                  BottomNavigationBarItem(icon: Icon(Icons.grid_4x4,color:Color(0xff5925DC),), label: "insights"),
                  BottomNavigationBarItem(icon: Icon(Icons.chat,color: Colors.black,), label: "chat"),


                ]),
          )



      ),
    );
  }
}
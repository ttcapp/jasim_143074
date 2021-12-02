import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasim_flutter/listview_page.dart';
import 'package:jasim_flutter/log_in.dart';
import 'package:jasim_flutter/secon_page.dart';
import 'package:jasim_flutter/third_page.dart';
import 'package:jasim_flutter/utills/all_colors.dart';
import 'package:jasim_flutter/utills/all_strings.dart';
import 'package:slide_drawer/slide_drawer.dart';



String imgSrcAvatar="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png";

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          // call toggle from SlideDrawer to alternate between open and close
          // when pressed menu button
          onPressed: () => SlideDrawer.of(context)!.toggle(),
        ),
        centerTitle: true,
        backgroundColor: AllColors.appBarClr,
        title: Text(AllStrings.Profile),

      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image:
          AssetImage("assets/images/img.jpg"),
          fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(Colors.black12. withOpacity(0.2),
                BlendMode.dstATop))
        ),


        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>LogIn ()));

                  },
                  child: Text("LOG IN")
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>listViewPage()));

                  },
                  child: Text("Go To Third Page")
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: width*0.25,
                    width: width*0.25,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          imgSrcAvatar

                        ),
                      ),
                      borderRadius: BorderRadius.circular(180),
                      border: Border.all(
                          width: 3,
                          color: Colors.cyan)
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Spacer(),

                            Column(
                              children: [
                                Text(AllStrings.post3405,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),),
                                Text(AllStrings.posts),
                              ],
                            ),
                            Spacer(),

                            Column(
                              children: [
                                Text(AllStrings.Followers6k,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text(AllStrings.Followers),
                              ],
                            ),
                            Spacer(),
                            
                            Column(
                              children: [
                                Text(AllStrings.Folloing241k,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                Text(AllStrings.Folloing),
                              ],
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                    top: 5, bottom: 5,left: 25,right: 25
                                  ),
                                  child: Text("Message"),
                                ),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange,
                                  )
                                ),
                              ),

                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 5, bottom: 5,left: 5,right: 5
                                  ),
                                  child: Icon(Icons.account_circle)
                                ),
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.deepOrange,
                                    )
                                ),
                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 200,
                width:350 ,
                child: Image.asset("assets/images/img.jpg",)
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder:
                          (context)=>SecondPage()));

                },
                child: Text(AllStrings.goToNextPage)
            )

          ],
        ),
      ),
    );
  }
}


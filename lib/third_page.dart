import 'package:flutter/material.dart';
String imgSrcAvatar="https://cdn.pixabay.com/photo/2019/09/24/21/07/flowers-4502219_1280.jpg";

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  _ThirdPageState createState() => _ThirdPageState();
}
double conHeight=50;
double conWidth=50;
class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
      ),
      body: Center(
        child: Column(
          children: [
            InkWell(
              onDoubleTap: (){
                setState(() {
                  conHeight=150;
                  conWidth=150;
                });
              },
              onTap: (){
                setState(() {
                  conHeight=250;
                  conHeight=250;
                });
              },
              child: AnimatedContainer(
                height: conHeight,
                width: conWidth,
                color: Colors.green,
                  duration: Duration(milliseconds: 4000),
                child: Image.network(
                  imgSrcAvatar

                ),



              ),
            )
          ],
        ),
      ),

    );
  }
}

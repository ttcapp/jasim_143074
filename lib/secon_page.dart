import 'package:flutter/material.dart';
import 'package:jasim_flutter/utills/all_colors.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}
String avatarSrc="https://previews.123rf.com/images/albertzig/albertzig1305/albertzig130500022/19631587-3d-cartoon-cute-flower.jpg";
class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarClr,
        title: Text("Second Page"),
      ),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [

                Container(
                  height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),
                Container(
                    height: 150,
                    width: 150,
                    child: Image.network(avatarSrc)
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}

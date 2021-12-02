import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jasim_flutter/utills/all_colors.dart';
class listViewPage extends StatefulWidget {
  const listViewPage({Key? key}) : super(key: key);

  @override
  _listViewPageState createState() => _listViewPageState();
}
List<String> stdName=[
  "Jasim",
  "foysal",
  "Shahidur",
  "masud"
  "Jakariya",
  "opurbo",
  "Ahshan"
];
class _listViewPageState extends State<listViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lst View Page"),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Md Jasim Project",
                style: TextStyle(fontSize: 25,
                  color: Colors.orange
                ),
              ),
            ),
            Expanded(

              child: ListView.builder(
                itemCount: stdName.length,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(stdName[index],
                          textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 20,
                        color: Colors.deepOrange
                      )
                        ,),
                    );

                  }
              ),
            )

          ],
        ),
      ),

    );
  }
}

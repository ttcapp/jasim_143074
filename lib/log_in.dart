import 'package:flutter/material.dart';
import 'package:jasim_flutter/my_home_page.dart';
import 'package:jasim_flutter/utills/all_colors.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}
//for global variables
String _email="jasim0499@gmail.com";
String _password="123456";

final _formKey=GlobalKey<FormState>();
class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double h= MediaQuery.of(context).size.height;
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: h,
        width: w,
        color: Colors.red.shade100,
        child: Padding(
          padding:
        EdgeInsets.only(
              top: h*0.09,
            left: w*0.07,
            right: w*0.07
        ),

          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Icon(Icons.account_circle_sharp,
                size: h*0.08+w*0.08,),
                SizedBox(
                  height: 18,
                ),
                TextFormField(
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return "The Field Is Empty";
                    }
                    else if(text != _email){
                      return "Invalid Email";
                    }

                  },
                  autofocus: true,

                  decoration: InputDecoration(
                    labelText: "Email",
                    labelStyle: TextStyle(
                      color: AllColors.appThemeColor
                    ),
                    hintText: "Enter Your Email",
                    suffixIcon: Icon(Icons.email_rounded,
                    color: AllColors.appThemeColor,),

                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeColor
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: AllColors.appThemeColor
                      )
                    )
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  validator: (text){
                    if(text== null || text.isEmpty){
                      return "The Field Is Empty";
                    }
                    else if(text != _password){
                      return "Invalid Passwoed";
                    }

                  },
                  obscureText: true,
                  autofocus: true,

                  decoration: InputDecoration(
                      labelText: "Password",
                      labelStyle: TextStyle(
                          color: AllColors.appThemeColor
                      ),
                      hintText: "Enter Your Password",
                      suffixIcon: Icon(Icons.remove_red_eye,
                        color: AllColors.appThemeColor,),

                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AllColors.appThemeColor
                          )
                      ),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: AllColors.appThemeColor
                          )
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: AllColors.appThemeColor
                  ),
                    onPressed: (){
                    if(_formKey.currentState! .validate()){
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                          => MyHomePage() ));
                    }

                    },
                    child: Container(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.login),
                          SizedBox(
                            width: 8,
                          ),
                          Text(" Log In",
                          style: TextStyle(
                            fontSize: 20
                          ),),
                        ],
                      ),
                    )
                ),

              ],
            ),
          ),
        ),
      ),

    );
  }
}

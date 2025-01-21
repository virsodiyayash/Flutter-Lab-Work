import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterprojects/Extra%20Questions/utils/String_const.dart';

class Extra5 extends StatefulWidget {
  const Extra5({super.key});

  @override
  State<Extra5> createState() => _Extra5State();
}

class _Extra5State extends State<Extra5> {
  TextEditingController phoneno = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  bool isRegistered = false;

  var isLogin = Login_Text;
  var isRegister = Register_Text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Form"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            //This is for phone number
            getTextFormFieldWidget(phoneno , "Enter Phone Number" ,
            // validator: (String? value){
            //   if(value == null || value.isEmpty){
            //     return "Please enter phone number";
            //   }
            //   return null;
            // }
            ),
            SizedBox(height: 15,),

            //This is for password
            getTextFormFieldWidget(password, "Enter Password" ,
            // validator: (value){
            //   if(value == null || value.isEmpty){
            //     return "Please enter the password";
            //   }
            //   return null;
            // }
            ),

            SizedBox(height: 15,),

            //This is for confirm password
            Visibility(
              visible: isRegistered,
                child:
            getTextFormFieldWidget(confirmPassword, "Enter confirm Password",
            // validator: (value){
            //   if(value == null || value.isEmpty){
            //     return "Please Enter confirm Password";
            //   }
            //   return null;
            // }
            ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(
                onPressed: () {
                  //There is some logic for login
                  setState(() {
                    isRegistered = !isRegistered;
                    isLogin = isRegistered ? Register_Text : Login_Text;
                    isRegister = isRegistered ? Login_Text : Register_Text;
                  });
                },
                child: Text(isLogin)),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("If you already registered?"),
                SizedBox(width: 10,),
                ElevatedButton(
                    onPressed: () {
                      //There is some logic for registration
                      setState(() {
                        isRegistered = !isRegistered;
                        isRegister = isRegistered ? Login_Text : Register_Text;
                        isLogin = isRegistered ? Register_Text : Login_Text;
                      });
                    },
                    child: Text(
                      isRegister,
                      style: TextStyle(color: Colors.blue),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget getTextFormFieldWidget(TextEditingController textController , hintText ,
      {validator}){
    return TextField(
      controller: textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
        labelText: hintText,
        hintText: hintText,
      ),
    );
  }
}

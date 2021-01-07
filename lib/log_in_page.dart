import 'package:flutter/material.dart';
import 'package:code_x/sign_up_page.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // creating and decorating the app bar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        title: RichText(
          text: TextSpan(
            style: TextStyle(fontSize: 22),
            children: [
              TextSpan(
                text: 'CODE',
              style: TextStyle(
                color: Colors.red,
              )
              ),
              TextSpan(
                  text: '-',
                  style: TextStyle(
                    color: Colors.red,
                  )
              ),
              TextSpan(
                  text: 'X',
                  style: TextStyle(
                    color: Colors.black,
                  )
              )
            ],
          ),
        ),
      ),

      // creating field for username and password



      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Username',
                labelText: 'Username',
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter password',
                labelText: 'Password',
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () => true,
              child: Container(
                height: 40,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                    child: Text('sign-in')),
              ),
            ),
           SizedBox(
             height: 20,
           ),
           InkWell(
             onTap: () {
               Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Signup()));
             },
             child: RichText(
                 text: TextSpan(
                   style: TextStyle(
                     color: Colors.black,
                   ),
                   children: [
                     TextSpan(
                       text: "Don't have account ",
                     ),
                     TextSpan(
                       text: "Sign-up",
                       style: TextStyle(
                         decoration: TextDecoration.underline,
                         fontWeight: FontWeight.bold,
                       )

                     )
                   ]
                 )

             ),

           ),
            SizedBox(
              height: 80,
            )
          ],

        ),
      ),
    );
  }
}

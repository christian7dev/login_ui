import 'package:flutter/material.dart';

import 'log_in_page.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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

      // creating registration form



      body: Container(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter Email',
                labelText: 'Email',
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
            TextField(
              decoration: InputDecoration(
                hintText: 'Re-write password',
                labelText: 'Re-write password',
                border: OutlineInputBorder(),

              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 40,
              width: 200,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.circular(24),
              ),
              child: Center(
                child: InkWell(
                  child: Text('sign-up'),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login()
                ),
                );
              },
              child: RichText(
                  text: TextSpan(
                      style: TextStyle(
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                          text: "Already have account ",
                        ),
                        TextSpan(
                            text: "Sign-in",
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

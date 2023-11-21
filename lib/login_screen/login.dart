import 'package:flutter/material.dart';

import '../home_screen/home.dart';
import '../shared/app_assets.dart';

class Login extends StatelessWidget {
  Login({super.key});

  static const String routeName = "Login Screen";
  var emailController = TextEditingController();
  var passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  AppAssets.mainImage,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.5,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 18.0),
                  child: Center(
                    child: Image.asset(
                      AppAssets.logo,
                      width: 200,
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16), // Adjust spacing as needed
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email here",
                    fillColor: Color(0xff212121),
                    labelStyle: TextStyle(color:Colors.white),

                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                child: TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: "Password here",
                    labelStyle: TextStyle(color: Colors.white),
                    fillColor: Color(0xff212121),
                    filled: true,
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: Colors.yellow),
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 18.0),
                  child: InkWell(child: Text("Forget password ?", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),)),
                ),
              ],
            ),
            SizedBox(height: 16), // Adjust spacing as needed
            SizedBox(
              width: 180,
              height: 45,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Home.routeName);
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: Colors.yellow,
                ),
                child: Text('LOGIN', style: TextStyle(color: Colors.black, fontSize: 18)),
              ),
            ),
            SizedBox(height: 16), // Adjust spacing as needed
            Text("Don't have an account?", style: TextStyle(fontSize: 12)),
            InkWell(child: Text("REGISTER", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12))),
            SizedBox(height: 16), // Adjust spacing as needed
          ],
        ),
      ),
    );



  }
}

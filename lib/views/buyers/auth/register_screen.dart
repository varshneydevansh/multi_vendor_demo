import 'package:flutter/material.dart';
import 'package:multi_vendor_demo/views/buyers/auth/login_screen.dart';

import '../../../controllers/auth_controller.dart';

// ignore: must_be_immutable
class RegisterScreen extends StatelessWidget {
  
  //creating the constructor for the AuthController class
  // 
  final AuthController _authController = AuthController();
  late String fullName, phoneNumber, email, password;
  _signupUser() async {
    String result = await _authController.signupUsers(
        fullName, phoneNumber, email, password);
    if (result != 'Sucess') {
      print(result);
    } else{
     print(result);
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                image: AssetImage('assets/images/uniek_pink.png'),
                height: 400,
                width: 400),
            Text(
              'Join the Trusted Marketplace',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Full Name';
                  }
                  return null;
                },
                //value is the any value entered by the user
                onChanged: (value) {
                  fullName = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter your Full Name',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.person,
                      color: const Color.fromARGB(255, 250, 101, 150),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your Phone Number';
                  }
                  return null;
                },
                onChanged: (value) {
                  phoneNumber = value;
                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Phone Number',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.phone_android,
                      color: const Color.fromARGB(255, 250, 101, 150),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onChanged: (value) {
                  email = value;
                },
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.email,
                      color: const Color.fromARGB(255, 250, 101, 150),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onChanged: (value) {
                  password = value;
                },
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none),
                  prefixIcon: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.lock,
                      color: Color.fromARGB(255, 250, 101, 150),
                    ),
                  ),
                ),
              ),
            ),
             Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 95, 203, 194),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {_signupUser();},
                  child: Text('Register',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          )),
                ),
              ),
            
            SizedBox(
              height: 100,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Already using uNIEKplace?',
                    style: TextStyle(fontSize: 15)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()),);
                  },
                  child: Text('Login',
                      style: TextStyle(
                          color: Color.fromARGB(255, 250, 101, 150),
                          fontSize: 15)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

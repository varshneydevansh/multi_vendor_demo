import 'package:flutter/material.dart';
import 'package:multi_vendor_demo/views/buyers/auth/register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              'Good to see you again!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
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
                onPressed: () {},
                child: Text('Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        )),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('New to uNIEKplace?',
                    style: TextStyle(fontSize: 15)),
                TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()),);
                  },
                  child: Text('Register',
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
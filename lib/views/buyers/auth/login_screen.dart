import 'package:flutter/material.dart';
import 'package:multi_vendor_demo/controllers/auth_controller.dart';
import 'package:multi_vendor_demo/utils/show_snackBar.dart';
import 'package:multi_vendor_demo/views/buyers/auth/register_screen.dart';


// ignore: must_be_immutable
class LoginScreen extends StatefulWidget {
  
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email, password;
  final _formKey = GlobalKey<FormState>();
  final AuthController _authController = AuthController();

  _loginUsers() async
  {
    if(_formKey.currentState!.validate())
    {
      await _authController.loginUsers(email, password);
      return showSnack(context, 'Successfully logged in');
    }
    else
    {
      return showSnack(context, 'Please enter valid details');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
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
                  onPressed: () {
                    _loginUsers();
                  },
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
        
      ),
      
    );
  }
}
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  // here the future is used because we are using async and await and it's of 
  //type string because the types of the function is string
  Future<String> signupUsers(String fullName, String phoneNumber, String email,
      String password) async {
        //storing user data in firebase database
    String error_variable = 'Something Wrong Happend'; // this is the default error message
    final FirebaseAuth _auth = FirebaseAuth.instance;
    //checking if the fields are valid or not
    try {
      if (fullName.isNotEmpty &&
          phoneNumber.isNotEmpty &&
          email.isNotEmpty &&
          password.isNotEmpty) {
        //creating user  and the await is used because it takes time to create user and we are using async
        // and storing the created user data in userCredential variable
        UserCredential userCredential = await _auth
            .createUserWithEmailAndPassword(email: email, password: password);


            error_variable = 'Sucess';
      } else {
        error_variable = 'Please fill all the fields';
      }
    } catch (e) {
      return e.toString();
    }
    return error_variable;
  }
}

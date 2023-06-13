import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  // here the future is used because we are using async and await and it's of
  //type string because the types of the function is string
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<String> signupUsers(String fullName, String phoneNumber, String email,
      String password) async {
    //storing user data in firebase database
    String error_variable =
        'Something Wrong Happend'; // this is the default error message

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
        //after sucessfully creating the user we are storing the user data in the firestore database
        await _firestore
            .collection('buyers')
            .doc(userCredential.user!.uid)
            .set({
          'fullName': fullName,
          'phoneNumber': phoneNumber,
          'email': email,
          'buyerId': userCredential.user!.uid,
          'address': ''
        });

        error_variable = 'Sucess';
      } else {
        error_variable = 'Please fill all the fields';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        error_variable = 'The password provided is too weak.';
      } else if (e.code == 'email-already-in-use') {
        error_variable = 'The account already exists for that email.';
      }
    } catch (e) {
      return e.toString();
    }
    return error_variable;
  }

  loginUsers(email, password) async {
    String error_result = 'Something went wrong';

    try {
      if (email.isNotEmpty && password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);
        error_result = 'Sucess';
      }
      else{
        error_result = 'Please fill all the fields';
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        error_result = 'No user found for that email.';
      } else if (e.code == 'wrong-password') {
        error_result = 'Wrong password provided for that user.';
      }
    } catch (e) {
      return e.toString();
    }
    return error_result;
  }
}

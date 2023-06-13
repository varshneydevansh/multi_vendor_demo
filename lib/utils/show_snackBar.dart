// context and the message we want to show in the snackbar to the user
// we could also eliminate the type of the title and message but it's good to specify the type
import 'package:flutter/material.dart';

showSnack(context, String title)
{
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Color.fromARGB(255, 250, 101, 150),
      content: Text(title),
      duration: Duration(seconds: 2),
    ),
  );
}
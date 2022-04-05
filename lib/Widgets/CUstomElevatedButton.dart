import 'package:flutter/material.dart';

Widget CustomELevatedButton(String text, BuildContext context, Route Sayfa){

  return ElevatedButton(
    onPressed: () {
      Navigator.push(context, Sayfa);
    },
    child: Text(text),
  );

}
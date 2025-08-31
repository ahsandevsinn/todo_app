import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final Function()? onTap ;
  const CustomTextfield({super.key,required this.controller,this.onTap});

  @override 
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white)
      ),
      suffixIcon: IconButton(onPressed: onTap, icon: Icon(Icons.add))
    ),
    
    );
  }
}
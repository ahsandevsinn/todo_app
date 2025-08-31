import 'package:flutter/material.dart';
import 'package:todo_app/custom_textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController controller = TextEditingController();
  List tasks = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          backgroundColor: Colors.green,
          toolbarHeight: 100,
          title: CustomTextfield(
            controller: controller,
            onTap: () {
              tasks.add(controller.text);
              setState(() {
                
              });
            },
          )),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: tasks.length,
          itemBuilder: (_, index) {
            return Text(tasks[index]);
          }),
    );
  }
}

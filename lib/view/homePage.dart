import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getplugin/controllers/counterController.dart';
import 'package:getplugin/view/detail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  CounterController _controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              _controller.increase();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              _controller.reduce();
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              Get.changeTheme(Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
                Get.to(Detail());
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {

            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'button_text'.tr,
            style: TextStyle(fontSize: 32),
          ),

                 Obx(()=>
                   Text(
              _controller.counter.toString(),
              style: TextStyle(fontSize: 32),
            ),
                 ),


          GetX<CounterController>(builder: (_controller2)=>Text( //With GetX its unnecessary to create instance for CounterController
            _controller2.counter.toString(),
            style: TextStyle(fontSize: 32),
          ), )
        ],
      )),
    );
  }
}

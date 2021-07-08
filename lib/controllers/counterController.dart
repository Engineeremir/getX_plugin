import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController{
  var _counter =0.obs;

  get counter => _counter.value;

  set counter(newCounterValue) => _counter.value = newCounterValue;

  void increase(){
    counter = counter + 1;
    Get.snackbar('Increase', 'Counter incresed',backgroundColor: Colors.blue,colorText: Colors.black,);
  }

  void reduce(){
    counter = counter - 1;
    Get.showSnackbar(GetBar(backgroundColor: Colors.black,title: 'Reduce',message: 'Counter reduced',isDismissible: true,duration: Duration(seconds: 2),));
  }






}
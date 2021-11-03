import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shopping_cart/my_cart.dart';
import 'package:simple_shopping_cart/my_controller.dart';

class TotalPage extends StatelessWidget {
  TotalPage({Key? key}) : super(key: key);
  final Mycontroller c = Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Total Item",
                style: TextStyle(fontSize: 30, color: Colors.blue),
              ),
              SizedBox(
                height: 10,
              ),
              Obx(() => Text(
                    "${c.sum.toString()}",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  )),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.grey.shade900,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  onPressed: () => Get.back(),
                  child: Text(
                    "Go Back",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

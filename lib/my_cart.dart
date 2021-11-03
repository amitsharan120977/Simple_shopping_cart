import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shopping_cart/my_controller.dart';
import 'package:simple_shopping_cart/total_page.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);
  final Mycontroller c = Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Text(
                  "Books",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => c.increment(),
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.books.toString()}",
                      style: TextStyle(fontSize: 25),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      onPressed: () => c.decrement(),
                    )),
                // )
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Pens",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.amber,
                  ),
                ),
                Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent,
                  ),
                  child: IconButton(
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                    onPressed: () => c.incrementPens(),
                  ),
                ),

                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      "${c.pens.toString()}",
                      style: TextStyle(fontSize: 25),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.redAccent,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                      onPressed: () => c.decrementPens(),
                    )),
                // )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(child: Container()),
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
                    onPressed: () => Get.to(() => TotalPage()),
                    child: Text(
                      "Total",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

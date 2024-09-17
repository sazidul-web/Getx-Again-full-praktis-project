import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sazidul_test/FevuriteController.dart';

class Frutolist extends StatefulWidget {
  @override
  State<Frutolist> createState() => _FrutolistState();
}

class _FrutolistState extends State<Frutolist> {
  Fevuritecontroller controller = Get.put(Fevuritecontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: controller.frutolist.length,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
                  onTap: () {
                    if (controller.tempfrutolist
                        .contains(controller.frutolist[index].toString())) {
                      controller.removedfromfevorit(
                          controller.frutolist[index].toString());
                    } else {
                      controller
                          .addtofevorit(controller.frutolist[index].toString());
                    }
                  },
                  title: Text(controller.frutolist[index].toString()),
                  trailing: Obx(
                    () => Icon(Icons.favorite,
                        color: controller.tempfrutolist.contains(
                                controller.frutolist[index].toString())
                            ? Colors.red
                            : Colors.white),
                  )));
        },
      ),
    );
  }
}

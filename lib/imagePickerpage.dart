import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sazidul_test/imagepickercontroller.dart';

class Imagepickerpage extends StatelessWidget {
  Imagepickercontroller controller = Get.put(Imagepickercontroller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: Obx(
        () {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                    radius: 80,
                    backgroundImage: controller.imagepath.isNotEmpty
                        ? FileImage(File(controller.imagepath.toString()))
                        : null),
              ),
              TextButton(
                  onPressed: () {
                    controller.getimage();
                  },
                  child: Text('Image Picked'))
            ],
          );
        },
      ),
    );
  }
}

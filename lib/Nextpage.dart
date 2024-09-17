import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Nextpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('NextThreePage');
        },
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}

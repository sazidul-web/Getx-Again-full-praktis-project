import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sazidul_test/FrutoList.dart';
import 'package:sazidul_test/imagePickerpage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: Text('This is  a Chart Cute'),
              subtitle: Text(
                  'I am Sazidul islam, an i am flutter Developer,i am from bangladesh i am bignner developer no expart but i am try a good developer for learning.'),
              onTap: () {
                Get.defaultDialog(
                  title: 'Delete',
                  middleText: 'Are you sure ? Deleting the text',
                  textConfirm: 'Yes',
                  textCancel: 'No',
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text('This is a Colors change Cart'),
              subtitle: Text(
                  'Hello, I am sazidul islam , i am a flutter developer i will be try for theme colors change try our best'),
              onTap: () {
                Get.bottomSheet(Container(
                  color: Colors.blue,
                  // decoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(30),
                  // ),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.light),
                        title: Text('Light theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.light());
                        },
                      ),
                      ListTile(
                        leading: Icon(Icons.dark_mode),
                        title: Text('Dark theme'),
                        onTap: () {
                          Get.changeTheme(ThemeData.dark());
                        },
                      )
                    ],
                  ),
                ));
              },
            ),
          ),
          ListTile(
            title: Text('massage'.tr),
            subtitle: Text('name'.tr),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                  child: TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text('English'),
              )),
              Card(
                  child: TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('bn', 'BD'));
                },
                child: Text('Bangla'),
              )),
            ],
          ),
          TextButton(
              onPressed: () {
                Get.to(Frutolist());
              },
              child: Text('Fruto List')),
          TextButton(
              onPressed: () {
                Get.to(Imagepickerpage());
              },
              child: Text('ImagePickerPage')),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed('Nextpage');
        },
        child: Icon(Icons.arrow_downward),
      ),
    );
  }
}

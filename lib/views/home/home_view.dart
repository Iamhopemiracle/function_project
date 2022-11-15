import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomePage extends StatelessWidget {
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('小功能'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: controller.functionList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ListTile(
              onTap: (){
                controller.gotoNextPage(index);
              },
              title: Text(controller.functionList[index]),
            ),
          );
        },
      ),
    );
  }
}

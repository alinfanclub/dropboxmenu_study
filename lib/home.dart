import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdropdown/components/dropdown.dart';
import 'package:getxdropdown/controller/dropbox_con.dart';
import 'package:getxdropdown/pages/page1.dart';
import 'package:getxdropdown/pages/page2.dart';
import 'package:getxdropdown/pages/page3.dart';

import 'components/customdropdownmenu.dart';

class Home extends GetView<dropboxCon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          // const dropdown(),
          customDropDownMenu(key: controller.dropkey),
          Expanded(
            child: Obx(() {
              switch (controller.A.value) {
                case DropMenu.JoounAngDong:
                  return page1();
                case DropMenu.chorangDong:
                  return page2();
                case DropMenu.DeaCheongDong:
                  return page3();

                default:
                  return Text('data');
              }
            }),
          ),
        ],
      ),
    );
  }
}

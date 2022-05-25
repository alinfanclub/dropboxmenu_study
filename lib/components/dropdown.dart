import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getxdropdown/controller/dropbox_con.dart';
import 'package:get/get.dart';

class dropdown extends GetView<dropboxCon> {
  const dropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => DropdownButton(
          items: DropMenu.values
              .map(
                (menu) => DropdownMenuItem(
                  child: Text(menu.name),
                  value: menu.index,
                ),
              )
              .toList(),
          onChanged: (int? value) {
            controller.changeDropMenuItem(value);
          },
          value: controller.A.value.index,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxdropdown/controller/dropbox_con.dart';

class customDropDownMenu extends GetView<dropboxCon> {
  const customDropDownMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          const DropDownList(),
          transition: Transition.fadeIn,
          opaque: false,
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            SizedBox(),
            Text(controller.A.value.name),
            Icon(Icons.arrow_drop_down)
          ],
        ),
      ),
    );
  }
}

class DropDownList extends GetView<dropboxCon> {
  const DropDownList({Key? key}) : super(key: key);

  Widget _dropDowunList() {
    return Column(
      children: DropMenu.values
          .map(
            (menu) => GestureDetector(
              onTap: () {
                controller.changeDropMenuItem(menu.index);
                Get.back();
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                child: Text(menu.name),
              ),
            ),
          )
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: Stack(
          children: [
            Positioned(
              // left: 0,
              // right: 0,
              // bottom: 0,
              // height: 0,
              child: GestureDetector(
                onTap: Get.back,
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Positioned(
              top: controller.dropdownPositionY,
              left: 0,
              child: Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    color: Colors.white),
                child: _dropDowunList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

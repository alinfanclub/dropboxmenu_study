import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum DropMenu { JoounAngDong, chorangDong, DeaCheongDong }

extension DropMenuExtention on DropMenu {
  String get name {
    switch (this) {
      case DropMenu.JoounAngDong:
        return '장림';
      case DropMenu.chorangDong:
        return '초량';
      case DropMenu.DeaCheongDong:
        return '대청';
    }
  }
}

class dropboxCon extends GetxController {
  Rx<DropMenu> A = DropMenu.JoounAngDong.obs;

  final dropkey = GlobalKey();

  void changeDropMenuItem(int? itemIndex) {
    var seletedItem =
        DropMenu.values.where((menu) => menu.index == itemIndex).first;
    A(seletedItem);
  }

  double get dropdownPositionY {
    var box = dropkey.currentContext!.findRenderObject();
    var trasnlattion = box!.getTransformTo(null).getTranslation();
    return box.paintBounds
        .shift(Offset(trasnlattion.x, trasnlattion.y))
        .bottomCenter
        .dy;
  }
}

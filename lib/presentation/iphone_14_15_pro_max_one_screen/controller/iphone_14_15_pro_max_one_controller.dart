import 'package:dndy_s_application2/core/app_export.dart';
import 'package:dndy_s_application2/presentation/iphone_14_15_pro_max_one_screen/models/iphone_14_15_pro_max_one_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the Iphone1415ProMaxOneScreen.
///
/// This class manages the state of the Iphone1415ProMaxOneScreen, including the
/// current iphone1415ProMaxOneModelObj
class Iphone1415ProMaxOneController extends GetxController {
  TextEditingController nameController = TextEditingController();

  TextEditingController nameController1 = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController mobileController = TextEditingController();

  TextEditingController gataController = TextEditingController();

  TextEditingController casteController = TextEditingController();

  TextEditingController adhaarController = TextEditingController();

  TextEditingController bankAccountController = TextEditingController();

  TextEditingController ifscCodeController = TextEditingController();

  Rx<Iphone1415ProMaxOneModel> iphone1415ProMaxOneModelObj =
      Iphone1415ProMaxOneModel().obs;

  @override
  void onClose() {
    super.onClose();
    nameController.dispose();
    nameController1.dispose();
    addressController.dispose();
    mobileController.dispose();
    gataController.dispose();
    casteController.dispose();
    adhaarController.dispose();
    bankAccountController.dispose();
    ifscCodeController.dispose();
  }
}

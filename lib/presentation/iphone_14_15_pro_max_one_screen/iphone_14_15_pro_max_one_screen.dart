import 'controller/iphone_14_15_pro_max_one_controller.dart';
import 'package:dndy_s_application2/core/app_export.dart';
import 'package:dndy_s_application2/core/utils/validation_functions.dart';
import 'package:dndy_s_application2/widgets/custom_elevated_button.dart';
import 'package:dndy_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxOneScreen
    extends GetWidget<Iphone1415ProMaxOneController> {
  Iphone1415ProMaxOneScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildFarmerDetails(),
                SizedBox(height: 48.v),
                _buildName(),
                SizedBox(height: 9.v),
                _buildName1(),
                SizedBox(height: 9.v),
                _buildAddress(),
                SizedBox(height: 9.v),
                _buildMobile(),
                SizedBox(height: 9.v),
                _buildGata(),
                SizedBox(height: 9.v),
                _buildCaste(),
                SizedBox(height: 9.v),
                _buildAdhaar(),
                SizedBox(height: 9.v),
                _buildBankAccount(),
                SizedBox(height: 9.v),
                _buildIfscCode(),
                SizedBox(height: 56.v),
                _buildSubmit(),
                SizedBox(height: 37.v),
                Text(
                  "msg_details_submited".tr,
                  style: CustomTextStyles.titleLargeWhiteA700,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFarmerDetails() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 74.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBlueGray,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 6.v),
          Text(
            "lbl_farmer_details".tr,
            style: theme.textTheme.displaySmall,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildName() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.nameController,
        hintText: "msg_enter_farmer_name".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
        contentPadding: EdgeInsets.symmetric(
          horizontal: 12.h,
          vertical: 15.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.nameController1,
        hintText: "msg_father_s_husband".tr,
        validator: (value) {
          if (!isText(value)) {
            return "err_msg_please_enter_valid_text".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddress() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.addressController,
        hintText: "lbl_address".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildMobile() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.mobileController,
        hintText: "lbl_mobile".tr,
        textInputType: TextInputType.phone,
        validator: (value) {
          if (!isValidPhone(value)) {
            return "err_msg_please_enter_valid_phone_number".tr;
          }
          return null;
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildGata() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.gataController,
        hintText: "lbl_gata".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildCaste() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.casteController,
        hintText: "lbl_caste".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildAdhaar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.adhaarController,
        hintText: "lbl_adhaar".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildBankAccount() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.bankAccountController,
        hintText: "msg_bank_account".tr,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildIfscCode() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 27.h),
      child: CustomTextFormField(
        controller: controller.ifscCodeController,
        hintText: "lbl_ifsc_code".tr,
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        validator: (value) {
          if (value == null || (!isValidPassword(value, isRequired: true))) {
            return "err_msg_please_enter_valid_password".tr;
          }
          return null;
        },
        obscureText: true,
      ),
    );
  }

  /// Section Widget
  Widget _buildSubmit() {
    return CustomElevatedButton(
      width: 153.h,
      text: "lbl_submit".tr,
      margin: EdgeInsets.only(left: 132.h),
      alignment: Alignment.centerLeft,
    );
  }
}

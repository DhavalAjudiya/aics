import 'package:aics/theam/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonTextField extends StatelessWidget {
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final ValueChanged<String>? onChanged;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final String? fontFamily;
  final Widget? suffixIcon;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final TextStyle? hintStyle;
  final Widget? prefixIcon;
  final String? labelText;
  final TextStyle? labelStyle;
  final bool readOnly;
  final AutovalidateMode? autoValidateMode;
  final EdgeInsetsGeometry? contentPadding;
  final TextInputAction? textInputAction;
  List<TextInputFormatter>? inputFormatters;
  final Widget? icon;

  CommonTextField({
    Key? key,
    this.inputFormatters,
    this.hintText,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.fontFamily,
    this.suffixIcon,
    this.obscureText = false,
    this.validator,
    this.hintStyle,
    this.prefixIcon,
    this.labelText,
    this.labelStyle,
    this.readOnly = false,
    this.autoValidateMode,
    this.contentPadding,
    this.textInputAction,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      inputFormatters: inputFormatters,
      autovalidateMode: autoValidateMode,
      readOnly: readOnly,
      obscureText: obscureText,
      controller: controller,
      keyboardType: keyboardType,
      onChanged: onChanged,
      validator: validator,
      textInputAction: textInputAction,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        fontFamily: fontFamily,
      ),
      decoration: InputDecoration(
        icon: icon,
        contentPadding: contentPadding,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          // borderSide: BorderSide(color: AppColor.BackWhite),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          // borderSide: BorderSide(color: AppColor.BackWhite),
        ),
        hintText: hintText,
        hintStyle: hintStyle,
        labelText: labelText,
        labelStyle: labelStyle,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        border: InputBorder.none,
        fillColor: AppColor.whiteColor,
        filled: true,
      ),
    );
  }
}

// class ProfileTextField extends StatelessWidget {
//   final String? hintText;
//   final TextEditingController? controller;
//   final TextInputType? keyboardType;
//   final ValueChanged<String>? onChanged;
//   final Widget? suffixIcon;
//   final bool obscureText;
//   final FormFieldValidator<String>? validator;
//   final Widget? prefixIcon;
//   final String? labelText;
//   final bool readOnly;
//   final AutovalidateMode? autoValidateMode;
//   final Widget? label;
//
//   const ProfileTextField({
//     Key? key,
//     this.hintText,
//     this.controller,
//     this.keyboardType,
//     this.onChanged,
//     this.suffixIcon,
//     this.obscureText = false,
//     this.validator,
//     this.prefixIcon,
//     this.labelText,
//     this.readOnly = false,
//     this.autoValidateMode,
//     this.label,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       textInputAction: TextInputAction.next,
//       autovalidateMode: autoValidateMode,
//       readOnly: true,
//       obscureText: obscureText,
//       controller: controller,
//       keyboardType: keyboardType,
//       onChanged: onChanged,
//       validator: validator,
//       maxLines: null,
//       minLines: 1,
//       style: TextStyle(
//         fontSize: SizeUtils.fSize_13(),
//         fontWeight: FontWeight.w500,
//         color: AppColor.blackColor,
//         fontFamily: Constants.poppins,
//       ),
//       decoration: InputDecoration(
//         label: label,
//         hintText: hintText,
//         hintStyle: TextStyle(
//           fontFamily: Constants.poppins,
//           color: AppColor.blackColor,
//           fontSize: SizeUtils.fSize_11(),
//         ),
//         labelText: labelText,
//         labelStyle: TextStyle(
//           color: AppColor.greyColor,
//           fontSize: SizeUtils.fSize_12(),
//           fontWeight: FontWeight.w400,
//         ),
//         prefixIcon: prefixIcon,
//         suffixIcon: suffixIcon,
//         border: InputBorder.none,
//         focusedBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: AppColor.greyColor.withOpacity(0.2),
//           ),
//         ),
//         enabledBorder: UnderlineInputBorder(
//           borderSide: BorderSide(
//             color: AppColor.greyColor.withOpacity(0.2),
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:mvhome/res/colors.dart';

class PrimaryFormFields extends StatelessWidget {
  final String hintTexts;
  final TextEditingController? editingControllers;
  final String? Function(String?)? validators;
  final Widget? prefixIcons;
  final Widget? suffixIcons;
  final bool obsecured;
  final FocusNode? focusNode;
  final TextInputType? textInputType;
  final TextInputAction? textInputAction;
  final void Function()? onEditingComplete;
  final Color? fillColor;

  const PrimaryFormFields({
    super.key,
    required this.hintTexts,
    this.editingControllers,
    required this.validators,
    required this.prefixIcons,
    required this.obsecured,
    required this.suffixIcons,
    this.focusNode,
    this.textInputAction,
    this.onEditingComplete,
    this.textInputType,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: textInputType,
      focusNode: focusNode,
      canRequestFocus: true,
      controller: editingControllers,
      obscureText: obsecured,
      textInputAction: textInputAction,
      onEditingComplete: onEditingComplete,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: fillColor != null,
        labelText: hintTexts,
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        prefixIcon: prefixIcons,
        suffixIcon: suffixIcons,
        hintStyle: TextStyle(color: AppColors.primaryGrey),
        border: OutlineInputBorder(
          borderSide: fillColor != null ? BorderSide.none : BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      validator: validators,
    );
  }
}

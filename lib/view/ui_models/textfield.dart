import 'package:flutter/material.dart';

import '../../constants.dart';

class TextfieldModel extends StatelessWidget {
  TextfieldModel({
    required this.textFieldTilte,
    required this.txtType,
    this.obsecurebool = false,
    this.txtfieldIcon,
    this.fieldFun,
    super.key,
  });
  String? textFieldTilte;
  VoidCallback? fieldFun;
  TextInputType? txtType;
  bool obsecurebool;
  Icon? txtfieldIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (value) {},
      obscureText: obsecurebool,
      keyboardType: txtType,
      cursorColor: textFieldThemeColor,
      style: const TextStyle(color: textFieldThemeColor),
      decoration: InputDecoration(
        prefixIcon: txtfieldIcon,
        hintText: textFieldTilte,
        hintStyle: const TextStyle(color: textFieldThemeColor),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: textFieldThemeColor),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: textFieldThemeColor),
          borderRadius: BorderRadius.all(
            Radius.circular(12),
          ),
        ),
      ),
    );
  }
}

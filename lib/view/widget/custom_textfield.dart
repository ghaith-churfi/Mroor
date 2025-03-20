import 'package:flutter/material.dart';
import 'package:traffic_app/utils/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hinttext,
      this.maxlines = 1,
      required this.icon,
      this.onSaved,
      this.onChanged,
      this.iconButtonSuffix,
      required this.obscureText,
      required this.keyboardType});
  final void Function(String)? onChanged;
  final int maxlines;
  final String hinttext;
  final Widget? icon;
  final Widget? iconButtonSuffix;
  final Function(String?)? onSaved;
  final bool obscureText;
  final TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        keyboardType: keyboardType,
        obscureText: obscureText,
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value) {
          if (value?.isEmpty ?? true) {
            return "This feild is required";
          } else {
            return null;
          }
        },
        maxLines: maxlines,
        decoration: InputDecoration(
          fillColor: Colors.grey[100],
          filled: true,
          icon: icon,
          // prefixIconColor: Colors.grey[500],
          suffixIcon: iconButtonSuffix,
          hintText: hinttext,
          hintStyle: TextStyle(color: Colors.grey[400]),
          border: customOutLineInputBorder(),
          enabledBorder: customOutLineInputBorder(),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide(color: Color(Constant.primaryColor))),
        ),
      ),
    );
  }

  OutlineInputBorder customOutLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(14),
        borderSide: BorderSide(color: Colors.white.withOpacity(.1)));
  }
}

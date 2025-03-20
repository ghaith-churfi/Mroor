import 'package:flutter/material.dart';
import 'package:traffic_app/utils/constant.dart';

class CostumButton extends StatelessWidget {
  const CostumButton({super.key, required this.text, required this.onpressed});
  final String text;
  final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: MaterialButton(
          onPressed: onpressed,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(36)),
          minWidth: 335,
          height: 56,
          color: Color(Constant.primaryColor),
          child: Text(
            text,
            style: const TextStyle(
                color: Colors.white, fontSize: 16, inherit: false),
          )),
    );
  }
}

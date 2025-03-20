import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:traffic_app/utils/constant.dart';
import 'package:traffic_app/view/logIn_view/login.dart';
import 'package:traffic_app/view/widget/custom_button.dart';
import 'package:traffic_app/view/widget/custom_textfield.dart';
import 'package:roundcheckbox/roundcheckbox.dart';

// ignore: must_be_immutable
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  bool isScureText = false;
  bool isChecked = false;
  String? email, password, confirmPassword;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Create Your\nAccount",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hinttext: 'Email',
                  icon: FaIcon(
                    FontAwesomeIcons.solidEnvelope,
                    color: Colors.grey[500],
                  ),
                  onChanged: (enterdEmail) {
                    email = enterdEmail;
                  },
                  obscureText: false,
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hinttext: 'Card number',
                  icon: FaIcon(
                    FontAwesomeIcons.solidAddressCard,
                    color: Colors.grey[500],
                  ),
                  onChanged: (enterdEmail) {
                    email = enterdEmail;
                  },
                  obscureText: false,
                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hinttext: "Password",
                  icon: FaIcon(
                    FontAwesomeIcons.lock,
                    color: Colors.grey[500],
                  ),
                  onChanged: (enterdPassword) {
                    password = enterdPassword;
                  },
                  obscureText: isScureText,
                  iconButtonSuffix: IconButton(
                      onPressed: () {
                        isScureText = !isScureText;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: isScureText
                            ? Color(Constant.primaryColor)
                            : Colors.grey[500],
                      )),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 15),
                CustomTextField(
                  hinttext: "Confirm password",
                  icon: FaIcon(
                    FontAwesomeIcons.lock,
                    color: Colors.grey[500],
                  ),
                  onChanged: (confirmedPassword) {
                    confirmPassword = confirmedPassword;
                  },
                  obscureText: isScureText,
                  iconButtonSuffix: IconButton(
                      onPressed: () {
                        isScureText = !isScureText;
                        setState(() {});
                      },
                      icon: Icon(
                        Icons.remove_red_eye,
                        color: isScureText
                            ? Color(Constant.primaryColor)
                            : Colors.grey[500],
                      )),
                  keyboardType: TextInputType.visiblePassword,
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundCheckBox(
                      onTap: (selected) {},
                      borderColor: Color(Constant.primaryColor),
                      size: 23,
                      checkedColor: Color(Constant.primaryColor),
                      border: Border.all(
                          width: 2.5, color: Color(Constant.primaryColor)),
                      checkedWidget: const Icon(
                        Icons.check,
                        size: 16,
                        color: Colors.white,
                      ),
                      isRound: true,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text("Remmber me")
                  ],
                ),
                const SizedBox(height: 15),
                CostumButton(
                    text: 'Sign up',
                    onpressed: () {
                      if (formKey.currentState!.validate()) {
                        formKey.currentState!.save();
                      } else {
                        autovalidateMode = AutovalidateMode.always;
                      }
                    }),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Get.to(() => const Login(),
                              transition: Transition.downToUp);
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyle(color: Color(Constant.primaryColor)),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

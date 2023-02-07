import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:studentnation/common/small_button.dart';
import 'package:studentnation/constants/ui_constants.dart';
import 'package:studentnation/feature/auth/view/signup_view.dart';
import 'package:studentnation/feature/auth/widgets/auth_field.dart';

import '../../../theme/pallete.dart';

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(
    builder: (context) => const LoginView(),
  );
  const LoginView({super.key});
  @override
  State<LoginView> createState() => _LoginViewState();
}
class _LoginViewState extends State<LoginView> {
  final appBar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
              AuthField(
                controller: emailController, hintText: 'Enter Your Mail id',),
                const SizedBox(height: 25,),
                AuthField(
                  controller: passwordController,hintText: 'Enter your Password'),
                const SizedBox(height: 40,),
                Align(
                    alignment: Alignment.center,
                    child: SmallButton(onTap: (){}, label: 'Submit',)),
                const SizedBox(height: 40,),
                RichText(text: TextSpan(
                  text: "Dont Have an Account?",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: "Sign Up !",
                      style: const TextStyle(
                        color: Pallete.yellowColor,
                        fontSize: 16,
                      ),
                      recognizer: TapGestureRecognizer()..onTap = () {
                        Navigator.push(context, SignUpView.route(),
                        );
                      }
                    )
                  ]
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }

}

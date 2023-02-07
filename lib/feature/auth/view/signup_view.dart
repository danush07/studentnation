import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../common/small_button.dart';
import '../../../constants/ui_constants.dart';
import '../../../theme/pallete.dart';
import '../widgets/auth_field.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const SignUpView(),
  );
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                    text: "Already have an Account?",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                    children: [
                      TextSpan(
                          text: "Log in !",
                          style: const TextStyle(
                            color: Pallete.yellowColor,
                            fontSize: 16,
                          ),
                          recognizer: TapGestureRecognizer()..onTap = () {
                            Navigator.push(context,LoginView.route(),
                            );
                          },
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

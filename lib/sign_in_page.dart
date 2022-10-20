import 'package:dars_10/sign_up_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  static const String signIn = "/sing_in";

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _posworkcontroller = TextEditingController();

  bool isPassword = false;

  @override
  void initState() {
    _emailcontroller.addListener(() {});
    _posworkcontroller.addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Amazon",
              // textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            getTextField(
              "Emial",
              _emailcontroller,
            ),
            SizedBox(
              height: 16,
            ),
            getTextField("Password", _posworkcontroller, isOpsecure: true,
                onVisibilityChanged: () {
              isPassword = !isPassword;
              setState(() {});
            }),
            SizedBox(
              height: 16,
            ),
            getButton(),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                Expanded(child: Text("")),
                RichText(
                  // textAlign: TextAlign.end,
                  text: TextSpan(
                      text: "Don't have an account? ",
                      style: const TextStyle(color: Colors.black38),
                      children: [
                        TextSpan(
                            text: "Sign up",
                            style: const TextStyle(
                                color: Colors.black, fontWeight: FontWeight.bold),
                                recognizer: TapGestureRecognizer()..onTap = (){
                                  Navigator.of(context).pushNamed(SignUpPage.signUp);
                                }
                                ),
                              
                      ],
                    ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  getTextField(String label, TextEditingController controller,
      {bool isOpsecure = false, VoidCallback? onVisibilityChanged}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        suffixIcon: isOpsecure
            ? IconButton(
                onPressed: () {
                  if (onVisibilityChanged != null) {
                    onVisibilityChanged();
                  }
                },
                icon:
                    Icon(isPassword ? Icons.visibility : Icons.visibility_off),
              )
            : null,
      ),
      obscureText: isPassword,
    );
  }

  getButton() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        "Sign in",
        style: TextStyle(color: Colors.white),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.maxFinite, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

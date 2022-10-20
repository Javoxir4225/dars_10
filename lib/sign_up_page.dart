import 'package:dars_10/sign_in_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  static const String signUp = "signUp";

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _emailCont = TextEditingController();
  late TextEditingController _pasworkCont = TextEditingController();
  bool isPoswork = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Amazon",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            getTextFiald("Email", _emailCont),
            SizedBox(height: 16,),
            getTextFiald("Passwork", _pasworkCont, isObsecure: true,
             funk: () {
              isPoswork = !isPoswork;
              setState(() {});
            }),
            SizedBox(height: 16,),
            getBotton(),
          ],
        ),
      ),
    );
  }

  getTextFiald(String label, TextEditingController controller,
      {bool isObsecure = false, VoidCallback? funk}) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        labelText: label,
        labelStyle: TextStyle(color: Colors.grey),
        suffixIcon: isObsecure
            ? IconButton(
                onPressed: () {
                  if(funk != null){
                    funk();
                    }
                },
                icon: Icon(isPoswork ? Icons.visibility : Icons.visibility_off),
              )
            : null,
      ),
      obscureText: isPoswork,
    );
  }

  getBotton() {
    return ElevatedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(SignInPage.signIn);
      },
      child: Text("Sign up", style: TextStyle(color: Colors.white),),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(double.maxFinite, 45),
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

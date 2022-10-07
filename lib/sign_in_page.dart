

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _posworkcontroller = TextEditingController();

  @override
  void initState() {
    _emailcontroller.addListener(() {
      
    });
    _posworkcontroller.addListener(() { });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Text(
                "Amazon",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              getTexField("Email",_emailcontroller),
            ],
          ),
        ),
      ),
    );
  }
  
  getTexField(String label, TextEditingController controller,{bool isObsecure = false,}){
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10), 
        ),
        labelText: "Email",
        labelStyle: TextStyle(color: Colors.grey),
        suffixIcon: IconButton(onPressed: (){
          
        }, icon: Icon(Icons.visibility)),
      ),
      obscureText:  isObsecure,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:taskmanagerapp/services/auth_services.dart';


class SignupScreen extends StatelessWidget {
   SignupScreen({super.key});
final AuthService _auth =AuthService();
final TextEditingController _emailController= TextEditingController();
final TextEditingController _passwordController= TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF1d2630),
      appBar: AppBar(
          backgroundColor:Color(0xFF1d2630),
        foregroundColor: Colors.white,
        title: Text("Create Account"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              SizedBox(height: 50),
              TextField(
                controller:_emailController,
                style: TextStyle(color:Colors.white),
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

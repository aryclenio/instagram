import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final email = TextEditingController();
  FocusNode email_F = FocusNode();
  final password = TextEditingController();
  FocusNode password_F = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          SizedBox(width: 96.w, height: 100.h),
          Center(child: Image.asset('images/logo.jpg')),
          SizedBox(height: 120.h),
          textField(email, Icons.email, 'Email', email_F),
          SizedBox(height: 15.h),
          textField(password, Icons.lock, 'Password', password_F),
          SizedBox(height: 10.h),
          forgotPassword(),
          SizedBox(height: 10.h),
          logInButton(),
          SizedBox(height: 10.h),
          signUp()
        ])));
  }

  Padding signUp() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(width: 10.w),
          Text('Don\'t have an account? ',
              style: TextStyle(fontSize: 13.sp, color: Colors.black)),
          Text('Sign Up',
              style: TextStyle(
                  fontSize: 13.sp,
                  color: Colors.blue,
                  fontWeight: FontWeight.bold)),
          SizedBox(width: 10.w),
        ],
      ),
    );
  }

  Padding logInButton() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(5.r)),
        child: Text('Log In',
            style: TextStyle(
                fontSize: 13.sp,
                color: Colors.white,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Padding forgotPassword() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Text('Forgot Password?',
          style: TextStyle(
              fontSize: 13.sp,
              color: Colors.blue,
              fontWeight: FontWeight.bold)),
    );
  }

  Widget textField(TextEditingController controller, IconData icon, String type,
      FocusNode focusNode) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Container(
        height: 44.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(5.r)),
        child: TextField(
          style: TextStyle(fontSize: 14.sp, color: Colors.black),
          controller: controller,
          focusNode: focusNode,
          decoration: InputDecoration(
              hintText: type,
              hintStyle: TextStyle(fontSize: 14.sp, color: Colors.black),
              prefixIcon: Icon(
                icon,
                color: Colors.black,
              ),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Colors.grey, width: 2.w)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5.r),
                  borderSide: BorderSide(color: Colors.grey, width: 2.w))),
        ),
      ),
    );
  }
}

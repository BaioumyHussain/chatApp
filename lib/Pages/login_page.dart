import 'package:chatapp/Components/my_buttons.dart';
import 'package:chatapp/Components/my_textfield.dart';
import 'package:chatapp/Services/auth/auth_service.dart';
import 'package:flutter/material.dart';

//login from baioumy hussain
//login from bibo

//nop

class LoginPage extends StatelessWidget {
  //email and pw text controllers
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();
  final void Function()? onTap;
  LoginPage({super.key, required this.onTap});
// login method
  void login(BuildContext context) async {
    //auth service
    final authService = AuthService();
    //try login
    try {
      await authService.signInWithEmailPAssword(
        _emailcontroller.text,
        _pwcontroller.text,
      );
    }

    //catch my errors
    catch (e) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text(e.toString()),
              ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo

            Icon(
              Icons.message,
              size: 60,
              color: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 50,
            ),
            //welcome back meesage
            Text(
              "Welcome back, you've been missed!",
              style: TextStyle(
                  color: Theme.of(context).colorScheme.primary, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            //email textfield
            MyTextField(
              hintText: 'Email',
              obsecureText: false,
              controller: _emailcontroller,
            ),
            const SizedBox(
              height: 20,
            ),
            //pw textfield
            MyTextField(
              hintText: 'Password',
              obsecureText: true,
              controller: _pwcontroller,
            ),
            const SizedBox(
              height: 25,
            ),

            //login button
            MyButton(
              text: "Login",
              onTap: () => login(context),
            ),
            const SizedBox(
              height: 25,
            ),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Not a member?',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'Register now',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

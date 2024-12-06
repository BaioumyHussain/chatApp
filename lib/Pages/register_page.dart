import 'package:chatapp/Components/my_buttons.dart';
import 'package:chatapp/Components/my_textfield.dart';
import 'package:chatapp/Services/auth/auth_service.dart';
import 'package:flutter/material.dart';
//register page
class RegisterPage extends StatelessWidget {
  final TextEditingController _emailcontroller = TextEditingController();
  final TextEditingController _pwcontroller = TextEditingController();
  final TextEditingController _confirmpwcontroller = TextEditingController();
  final void Function()? onTap;
  RegisterPage({super.key, required this.onTap});
  //rergister method
  void register(BuildContext context) {
    final _auth = AuthService();
    if (_pwcontroller.text == _confirmpwcontroller.text) {
      try {
        _auth.signUpWithEmailPassword(
            _emailcontroller.text, _pwcontroller.text);
      } catch (e) {
        showDialog(
            context: context,
            builder: (context) => AlertDialog(
                  title: Text(e.toString()),
                ));
      }
    
    } else {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                title: Text("passwords don't match!"),
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
              "Let's create an account for you!",
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
            //confirm password
            MyTextField(
              hintText: 'Confirm Password',
              obsecureText: true,
              controller: _confirmpwcontroller,
            ),
            const SizedBox(
              height: 25,
            ),

            //login button
            MyButton(
              text: "Register",
              onTap: () => register(context),
            ),
            const SizedBox(
              height: 25,
            ),

            //register now
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an acount?',
                  style:
                      TextStyle(color: Theme.of(context).colorScheme.primary),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    'login now',
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

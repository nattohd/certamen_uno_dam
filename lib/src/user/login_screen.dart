import 'package:certamen_uno_dam/provider/user_provider.dart';
import 'package:certamen_uno_dam/src/user/widgets/decoration_login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextEditingController userController = TextEditingController();
    TextEditingController passController = TextEditingController();
    return Scaffold(
        body: Center(
      child: Container(
        decoration: boxDecorationLogin,
        height: size.height * 0.75,
        width: size.width * 0.75,
        child: Column(
          children: [
            Spacer(
              flex: 4,
            ),
            Container(
              width: size.width * 0.6,
              height: size.height * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: size.width * 0.65,
              child: Column(
                children: [
                  TextFormField(
                    controller: userController,
                    decoration: InputDecoration(
                      labelText: "Username",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                  TextFormField(
                    controller: passController,
                    decoration: InputDecoration(
                      labelText: "Password",
                      focusedBorder: UnderlineInputBorder(),
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  context.read<UserProvider>().changeLogin(newState: true);
                  context.go('/profile');
                },
                child: Text('Login')),
            Spacer(),
          ],
        ),
      ),
    ));
  }
}

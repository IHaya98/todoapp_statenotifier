import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todoapp/controller/signup_controller.dart';
import 'package:todoapp/repository/fb_auth.dart';

// Since the state was moved to the view model, this is now a StatelessWidget.
class SignupView extends StatelessWidget {
  const SignupView({Key? key}) : super(key: key);

  static Route<dynamic> route() {
    return MaterialPageRoute<dynamic>(
      builder: (_) => const SignupView(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('新規登録'),
        backgroundColor: Colors.white.withOpacity(0.0),
        elevation: 0.0,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/image/signup.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: FractionalOffset.topCenter,
                end: FractionalOffset.bottomCenter,
                colors: [
                  const Color(0xffff5500).withOpacity(0.2),
                  const Color(0xff00bbaa).withOpacity(0.8),
                ],
                stops: const [
                  0.0,
                  1.0,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 350,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      hintText: 'xxx@xxx.xxx',
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    validator: (value) => value!.isEmpty ? 'Eメールは必須項目' : null,
                    onChanged: (value) =>
                        context.read(signupProvider.notifier).setEmail(value),
                  ),
                ),
                Container(
                  width: 350,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Username',
                      icon: Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    validator: (value) => value!.isEmpty ? 'ユーザー名は必須項目' : null,
                    onChanged: (value) => context
                        .read(signupProvider.notifier)
                        .setUsername(value),
                  ),
                ),
                Container(
                  width: 350,
                  child: TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      icon: Icon(
                        Icons.password,
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(color: Colors.white),
                      labelStyle: TextStyle(color: Colors.white),
                    ),
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                    validator: (value) => value!.isEmpty ? 'パスワードは必須項目' : null,
                    onChanged: (value) => context
                        .read(signupProvider.notifier)
                        .setPassword(value),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.all(16),
                  alignment: Alignment.center,
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: ElevatedButton(
                      child: const Text('登録'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.orange,
                        onPrimary: Colors.white,
                      ),
                      onPressed: () {
                        FBAuth().signUp(
                            context.read(signupProvider).email,
                            context.read(signupProvider).username,
                            context.read(signupProvider).password,
                            context);
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

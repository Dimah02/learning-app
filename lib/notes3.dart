import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _key = GlobalKey<FormState>();
  String errorMsg = "Wrong Username or Password";
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("working"),
      ),
      body: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Email",
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                controller: _emailController,
                validator: _validateEmail,
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(
                  hintText: "Password",
                  labelText: "Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                obscureText: true,
                validator: _validatePassword,
                controller: _passwordController,
              ),
              const SizedBox(height: 32),
              ElevatedButton(
                style: const ButtonStyle(
                    minimumSize: WidgetStatePropertyAll(Size(150, 65)),
                    elevation: WidgetStatePropertyAll(0),
                    backgroundColor: WidgetStatePropertyAll(Color(0xFFD80A61))),
                onPressed: _login,
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
            ],
          )),
    );
  }

  String? _validateEmail(String? value) {
    if (value!.isEmpty) {
      return "Email cannot be empty";
    } else {
      return null;
    }
  }

  String? _validatePassword(String? value) {
    if (value!.length < 5) {
      return "Password cannot be empty";
    } else {
      return null;
    }
  }

  void _login() {
    if (_key.currentState!.validate()) {
      _handelSignIn();
    }
  }

  void _handelSignIn() {
    print("success");
    // try {
    //   Auth()
    //       .singInWithEmailAndPassword(
    //           email: _emailController.text, password: _passwordController.text)
    //       .whenComplete(() {
    //     Navigator.pushNamed(context, '/home');
    //   });
    // } catch (err) {
    //   print(err);
    // }
  }
}

import 'package:flutter/material.dart';
import 'package:learning_app/auth/auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _key = GlobalKey<FormState>();
  String errorMsg = "Wrong Username or Password";
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 254, 231, 241),
      body: Form(
        key: _key,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                  width: double.infinity,
                  height: 175,
                  child: Image(
                      image: AssetImage('assets/images/logo/puzzle.png'))),
              const SizedBox(
                height: 32,
              ),
              const Text(
                "Palabra",
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 32,
              ),
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
                    minimumSize: MaterialStatePropertyAll(Size(150, 65)),
                    elevation: MaterialStatePropertyAll(0),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xFFD80A61))),
                onPressed: _login,
                child: const Text(
                  "Login",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Do not have an account?"),
                  const SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/signup');
                    },
                    child: const Text(
                      "SignUP",
                      style: TextStyle(color: Colors.deepPurpleAccent),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
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
    try {
      Auth()
          .singInWithEmailAndPassword(
              email: _emailController.text, password: _passwordController.text)
          .whenComplete(() {
        Navigator.pushNamed(context, '/home');
      });
    } catch (err) {
      print(err);
    }
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String notGood="try me";
  Future<void> _handleLogin() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      // Login successful, navigate to Home widget
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
      print("Login successful");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        setState(() {
          notGood = e.toString().substring(15);
        });
      } else if (e.code == 'wrong-password') {
        setState(() {
          notGood = e.toString().substring(15);
        });
        print("wrong password");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child:Stack(
              alignment: Alignment.center,
              children: [
                Image.asset('assets/1.png',
                  width: 300,
                  height: 210,
                  fit: BoxFit.cover,
                ),
                const Positioned(
                    top: 0,
                    child: Text(
                      "WELCOME TO B. ALERT"
                          "",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    )
                ),
                const Positioned(
                    bottom: -4,
                    child: Text(
                      "WUNA NO FEAR. B ALERT IS HERE",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    )
                ),
              ],
            ),
          ),
          SizedBox(height: 58),
          const Text("LOGIN PAGE",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 2,
              textBaseline: TextBaseline.alphabetic,
            ),
          ),
          SizedBox(height: 20),
          Padding(padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
            child:     TextField(
              controller: _emailController,
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
          ),
          Padding(padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 5),
            child: TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'enter password',
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(notGood,style: TextStyle(
            color: Colors.red,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),),
          const SizedBox(height: 60),
          ElevatedButton(onPressed: _handleLogin,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const  EdgeInsets.symmetric(horizontal: 20.0),
            ),
            child: const Text("LOGIN",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 14),

          GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/');
            },
            child: const Text("Don't have account ? click to register",
            ),
          ),
        ],
      ),
    );
  }
}
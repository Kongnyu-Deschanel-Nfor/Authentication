import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class SignUpWidget extends StatefulWidget {
  const SignUpWidget({Key? key}) : super(key: key);

  @override
  _SignUpWidgetState createState() => _SignUpWidgetState();
}

class _SignUpWidgetState extends State<SignUpWidget> {
   final TextEditingController _emailController = TextEditingController();
   final TextEditingController _passwordController = TextEditingController();
   final TextEditingController _usernameController=TextEditingController();
  String notGood='';
  @override


  Future<void> _handleSignUp() async {
    // Perform sign-up logic here
    String email = _emailController.text;
    String password = _passwordController.text;

    // Add your sign-up logic using Firebase or any other authentication service
    // For example:
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      print("successfull");
      Navigator.pushNamed(context, '/login');
    } on FirebaseAuthException catch (e) {
      setState(() {
        notGood=e.toString().substring(30);
      });
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
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
          const Text("REGISTRATION PAGE",
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 30,
            letterSpacing: 2,
            textBaseline: TextBaseline.alphabetic,
          ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
            child: TextField(
              controller: _usernameController,
              // Assign the _passwordController here
              decoration: const InputDecoration(
                fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(),
                labelText: 'enter full name',
              ),
            ),
          ),
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
           Text(notGood),
          const SizedBox(height: 60),
          ElevatedButton(onPressed: _handleSignUp,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              padding: const  EdgeInsets.symmetric(horizontal: 20.0),
            ),
              child: const Text("REGISTER",
              style: TextStyle(
                color: Colors.white,
              ),
              ),
          ),
          const SizedBox(height: 14,),
          const Text("Already have an account? login",
          ),
        ],
      ),
    );
  }
}
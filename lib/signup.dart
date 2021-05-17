import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yat_flutter_final_project/login.dart';
import 'package:yat_flutter_final_project/store.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}
class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  String _email, _password;
  FirebaseAuth auth = FirebaseAuth.instance;
  Future<void> register() async
  {
    (await auth.createUserWithEmailAndPassword(
        email: _email.trim(), password: _password)) ;
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString("email", _email.trim());
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: Color(0xff01865f),
      body: Form(
        key: _globalKey,
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * .3,
                alignment: Alignment.center,
                child:
                Image(
                    image: AssetImage('images/google-play.png')
                ),
              ),
            ),

            SizedBox(
              height: height * .1,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'name is Empty';
                  }
                  return null;
                },
                onSaved: (value) {

                },
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    hintText: 'Enter your name',
                    prefixIcon: Icon(
                      Icons.perm_identity,
                      color: Colors.teal,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    )
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'email is Empty';
                  } else {
                    _email = value;
                  }
                  return null;
                },
                cursorColor: Colors.white,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: 'Enter your email',
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    )
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: TextFormField(
                validator: (value) {
                  if (value.isEmpty) {
                    return 'password is Empty';
                  } else {
                    _password = value;
                  }
                  return null;
                },
                obscureText: true,
                autocorrect: false,
                cursorColor: Colors.white,
                decoration: InputDecoration(
                    hintText: 'Enter your password',
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.teal,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Colors.white
                        )
                    )

                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 120),
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                onPressed: () async {
                  if (_globalKey.currentState.validate()) {
                    await register();

                    Navigator.push(context, MaterialPageRoute(
                        builder: (BuildContext context) => Store()));
                  }
                },
                color: Colors.black,
                child: Text('Sign Up',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('You have an account ?',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LogInScreen()));
                  },
                  child: Text('Login',
                    style: TextStyle(
                        fontSize: 16
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}



import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _State();
}

class _State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: Offset(0, 2), // changes position of shadow
                  ),
                ],
              ),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Title(
                        color: Colors.black,
                        child: Title(
                          color: Colors.black,
                          child: Text(
                            "Welcome to Easy Shop",
                            style: TextStyle(
                                fontSize: 26, fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'password',
                    ),
                  ),
                  SizedBox(height: 18),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "ForgotPassword?",
                          )),
                    ],
                  ),
                  SizedBox(height: 18),
                  Center(
                    child: ElevatedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width,
                          child: Center(child: Text("SIGN IN"))),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 18),
            InkWell(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.purple,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook_rounded,
                        )),
                    Text(
                      "Sign in with Facebook",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 18),
            InkWell(
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.purple,
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.facebook_outlined)),
                    Text(
                      "Sign in with Google",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Center(
                  child: Text("Don't have an Account? Sign Up"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

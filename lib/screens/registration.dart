import 'package:flutter/material.dart';

class RegistationScreen extends StatefulWidget {
  const RegistationScreen({super.key});

  @override
  State<RegistationScreen> createState() => _RegistationScreenState();
}

class _RegistationScreenState extends State<RegistationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(
            color: white,
            height: 100,
          ),
          Container(
            color: white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  "images/lg.png",
                  width: 230,
                  height: 120,
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            color: white,
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: white),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: authProvider.name,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: white),
                      labelText: "Name",
                      hintText: "eg: Santos Enoque",
                      icon: Icon(
                        Icons.person,
                        color: white,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: white),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: authProvider.email,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: white),
                      labelText: "Email",
                      hintText: "santos@enoque.com",
                      icon: Icon(
                        Icons.email,
                        color: white,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: white),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: authProvider.phone,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: white),
                      labelText: "Phone",
                      hintText: "+91 3213452",
                      icon: Icon(
                        Icons.phone,
                        color: white,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: white),
                  borderRadius: BorderRadius.circular(5)),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: TextFormField(
                  controller: authProvider.password,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(color: white),
                      border: InputBorder.none,
                      labelStyle: TextStyle(color: white),
                      labelText: "Password",
                      hintText: "at least 6 digits",
                      icon: Icon(
                        Icons.lock,
                        color: white,
                      )),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              onTap: () async {
                if (!await authProvider.signUp()) {
                  _key.currentState.showSnackBar(
                      SnackBar(content: Text("Registration failed!")));
                  return;
                }
                authProvider.clearController();
                changeScreenReplacement(context, MyHomePage());
              },
              child: Container(
                decoration: BoxDecoration(
                    color: black, borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CustomText(
                        text: "Register",
                        color: white,
                        size: 22,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              changeScreen(context, LoginScreen());
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CustomText(
                  text: "Login here",
                  size: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:resturent_app11/screens/LoginPage/login_screen.dart';
import 'package:resturent_app11/screens/createaccount/createaccountbolc.dart';

class craetepassword extends StatefulWidget {
  @override
  State<craetepassword> createState() => _craetepasswordState();
}

class _craetepasswordState extends State<craetepassword> {
  var bloc = createaccountbloc();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 85),
                child: Center(child: Text("Register")),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 90, left: 28, right: 15),
                child: TextField(
                  controller: bloc.namecontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, left: 28, top: 20),
                child: TextField(
                  controller: bloc.emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 15,
                  right: 28,
                  left: 28,
                ),
                child: TextField(
                  controller: bloc.mobilecontroller,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    hintText: "Mobile",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 20, right: 28, left: 28, bottom: 38),
                child: TextField(
                  obscureText: true,
                  obscuringCharacter: "*",
                  controller: bloc.createpasswordcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Create Password",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 35,
                width: 300,
                child: ElevatedButton(
                  onPressed: () {
                    bloc.validationRegister(context);
                    setState(() {});
                  },
                  child: const Text(
                    "Register",
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(color: Colors.pink),
                      ),
                    ),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.pink),
                  ),
                ),
              ),
              Text(
                bloc.errormsg,
                style: const TextStyle(color: Colors.black),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(onPressed: () {}, child: const Text("google")),
                  Container(
                    height: 10,
                    width: 1,
                    color: Colors.blue,
                  ),
                  TextButton(onPressed: () {}, child: const Text("facebook")),
                  Container(
                    height: 10,
                    width: 1,
                    color: Colors.blue,
                  ),
                  TextButton(onPressed: () {}, child: const Text("twitter")),
                ],
              ),
              const SizedBox(
                height: 250,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool _passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        key: _scaffoldKey,
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 100,
                      child: Image.asset('assets/logo.png',
                          fit:BoxFit.contain
                      ),
                    ),
                    Center(
                      child: InkWell(
                        child: const Text(
                          "THRIVE",
                          style: TextStyle(color: Colors.blueAccent, fontSize: 30,fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                              Icons.account_box,
                            color: Colors.white,
                          ),
                          enabledBorder:const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 2)
                          ),
                          hintText: 'Enter Your Name',
                            hintStyle: TextStyle(color: Colors.white)
                        ),
                          style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: _passwordHidden,
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                                Icons.lock,
                              color: Colors.white),
                            enabledBorder:const OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.grey, width: 2)
                            ),
                            hintText: 'Enter Password',
                            hintStyle: TextStyle(color: Colors.white),
                            suffix: InkWell(
                                onTap: _togglePasswordView,
                                child: Icon(
                                  _passwordHidden
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                )
                            )
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                              Icons.perm_identity,
                            color: Colors.white,
                          ),
                          enabledBorder:const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 2)
                          ),
                          hintText: 'Enter LINKEDIN ID',
                            hintStyle: TextStyle(color: Colors.white)
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                              Icons.email,
                            color: Colors.white),
                          enabledBorder:const OutlineInputBorder(
                              borderSide: const BorderSide(color: Colors.grey, width: 2)
                          ),
                          hintText: 'Enter EMAIL ID',
                          hintStyle: TextStyle(
                              color: Colors.white,),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 330.0,
                      height: 50.0,
                      child: ElevatedButton(
                        // padding: const EdgeInsets.fromLTRB(20,15,20,15),
                        // color: Colors.blue,
                        child: Text('SIGN UP'),
                        onPressed: (){},
                      ),
                    ),
                  ],
                ),
              )
          ),
        )
    );
  }
  void _togglePasswordView() {
    setState(() {
      _passwordHidden = !_passwordHidden;
    });
  }
}

import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    //email text field

    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(15),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 200,
                      child: Image.asset('assets/logo.jpg',
                      fit:BoxFit.contain
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box),
                          border: OutlineInputBorder(),
                          labelText: 'User Name',
                          hintText: 'Enter Your Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: TextField(
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          border: OutlineInputBorder(),
                          labelText: 'Password',
                          hintText: 'Enter Password',
                            suffix: InkWell(
                                onTap: _togglePasswordView,
                               child: Icon(
                                 _isHidden
                                     ? Icons.visibility
                                     : Icons.visibility_off,
                               )
                            )
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('Forget password?'),
                    ),
                    SizedBox(
                      width: 330.0,
                      height: 50.0,
                      child: ElevatedButton(
                        // padding: const EdgeInsets.fromLTRB(20,15,20,15),
                        // color: Colors.blue,
                        child: Text('LOGIN'),
                        onPressed: (){},
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Text('Not a Member ? Click here to Signup'),
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
      _isHidden = !_isHidden;
    });
  }
}



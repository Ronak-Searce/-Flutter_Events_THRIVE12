import 'package:flutter/material.dart';
class RegistraionFrom extends StatefulWidget {
  const RegistraionFrom({Key? key}) : super(key: key);

  @override
  State<RegistraionFrom> createState() => _RegistraionFromState();
}

class _RegistraionFromState extends State<RegistraionFrom> {
  bool _isHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
              padding: EdgeInsets.all(20),
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
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.account_box),
                          border: OutlineInputBorder(),
                          hintText: 'Enter Your Name',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: _isHidden,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.lock),
                            border: OutlineInputBorder(),
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
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.perm_identity),
                          border: OutlineInputBorder(),
                          hintText: 'Enter LINKEDIN ID',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                          hintText: 'Enter EMAIL ID',
                        ),
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
      _isHidden = !_isHidden;
    });
  }
}

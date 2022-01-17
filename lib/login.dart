import 'package:book_search/home.dart';
import 'package:book_search/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<String> _category = ['students', 'teachers', 'staffs'];
  String _password;
  String _selectedLocation;
  int _selectedLocationIndex;

  @override
  Widget build(BuildContext context) {
    var fieldText = TextEditingController();
    var fieldText1 = TextEditingController();
    String inputText = '';
    String inputText1 = '';
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                ),
              ),
              Expanded(
                flex: 8,
                child: Column(
                  children: [
                    SizedBox(
                      height: 150.0,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        '  Login',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextFormField(
                          controller: fieldText,
                          onChanged: (text) {
                            inputText = text;
                          },
                          decoration: new InputDecoration(
                              prefixIcon: Icon(
                                Icons.perm_identity,
                              ),
                              labelText: 'User ID',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                              )),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: TextFormField(
                          controller: fieldText1,
                          onChanged: (text) {
                            inputText1 = text;
                          },
                          decoration: new InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_outlined,
                              ),
                              labelText: 'Password',
                              labelStyle: TextStyle(
                                color: Colors.black87,
                                fontSize: 17,
                              )),
                          validator: (val) =>
                              val.length < 4 ? 'Password too short' : null,
                          onSaved: (val) => _password = val,
                          obscureText: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 150.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    setState(() {
                                      if (inputText == 'abc@gmail.com' &&
                                          inputText1 == 'abcd@gmail.com') {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => Home()));
                                      } else {
                                        print('failed');
                                      }
                                    });
                                  },
                                  child: Text(
                                    '      Login     ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Text(
                        '                                          OR',
                        textAlign: TextAlign.right,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 150.0,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.cyan,
                              shape: new RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(50.0),
                              ),
                            ),
                            onPressed: () {},
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyApp()));
                                    setState(() {});
                                  },
                                  child: Text(
                                    '     Signup    ',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

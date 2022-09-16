import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);
  //bool checkBoxValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text('Join Our Community'),
        centerTitle: true,
        backgroundColor: const Color(0xFFf54256),
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/food-photographe.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 45, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Create Account',
                      style: TextStyle(fontSize: 18),
                    ),
                    //A Container for Username TextField
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                      child: Container(
                        height: 40,
                        width: 310,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Username'),
                          ),
                        ),
                      ),
                    ),
                    // A Container for Full Name
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                      child: Container(
                        height: 40,
                        width: 310,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Full Name'),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                      child: Container(
                        height: 40,
                        width: 310,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.black),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                                border: InputBorder.none, hintText: 'Email'),
                          ),
                        ),
                      ),
                    ),
                    // A Container for Password and Confirm Password
                    Row(
                      children: [
                        //Password Container
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                              child: TextField(
                                keyboardType: TextInputType.name,
                                obscureText: true,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Password'),
                              ),
                            ),
                          ),
                        ),
                        // Confirm Password Container
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 11, 0, 0),
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(color: Colors.black),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.fromLTRB(10.0, 0, 0, 0),
                              child: TextField(
                                obscureText: true,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Confirm Password'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Checkbox(
                    //   value: null,
                    //   onChanged: (bool? value) {},
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 11, 0, 0),
                      child: Container(
                        width: 310,
                        height: 40,
                        decoration: BoxDecoration(
                            color: const Color(0xFF004D40),
                            borderRadius: BorderRadius.circular(20)),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Create Account',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Already have an Account?'),
                          // TextButton(
                          //   onPressed: () {},
                          //   child: const Text('Sign In'),
                          // )
                          Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                            child: InkWell(
                              onTap: () {
                                //Navigator.of(context).pushNamed('/main');
                                Navigator.of(context).pop();
                              },
                              child: const Text(
                                'Sign In',
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Colors.blueAccent,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

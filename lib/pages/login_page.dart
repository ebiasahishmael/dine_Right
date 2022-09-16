import 'package:flutter/material.dart';
//import 'package:mack_dine_right/pages/signup_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/food-photographe.jpg'),
                fit: BoxFit.cover,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken)),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                //width: MediaQuery.of(context).size.width / 2,
                margin: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                child: Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.white60.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:
                      //Begining of Login
                      Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      // Username Textfield
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          height: 45,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const TextField(
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.next,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Username',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                                size: 20,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Password Textfield
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Container(
                          height: 45,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const TextField(
                            obscureText: true,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black,
                                size: 20,
                              ),
                              hintStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Login Button Container
                      Container(
                        width: 250,
                        height: 36,
                        decoration: BoxDecoration(
                            color: const Color(0xFF004D40),
                            borderRadius: BorderRadius.circular(50)),
                        child: TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamed('/homepage');
                          },
                          style: TextButton.styleFrom(primary: Colors.white),
                          child: const Text(
                            'Login',
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                        color: Color(0xff707070),
                        indent: 30,
                        endIndent: 30,
                        height: 15,
                      ),
                      //Beginning of Apple Container
                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.black),
                        child: TextButton.icon(
                          onPressed: () {},
                          style: TextButton.styleFrom(primary: Colors.white),
                          icon: const Padding(
                            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                            child: Icon(Icons.apple),
                          ),
                          label: const Text('Continue with Apple'),
                        ),
                      ), // End of Apple Container
                      //Beginning of Google Container
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          width: 250,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.white),
                          child: TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(primary: Colors.black),
                            icon: const ImageIcon(
                              AssetImage('assets/Group 1429@3x.png'),
                            ),
                            label: const Text('Continue with Google'),
                          ),
                        ),
                      ),
                      //beginning of Facebook Container
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                        child: Container(
                          width: 250,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: const Color(0xff3A5998)),
                          child: TextButton.icon(
                            onPressed: () {},
                            style: TextButton.styleFrom(primary: Colors.white),
                            icon: const ImageIcon(
                                AssetImage('assets/Group 8@3x.png')),
                            label: const Text('Continue with Facebook'),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              'New to MDR App?',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).pushNamed('/signup');
                              },
                              child: const Text(
                                ' Sign Up',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        )
      ],
    );
  }
}

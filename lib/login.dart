import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:toggle_switch/toggle_switch.dart';

import '../../../main.dart';
import 'home_page.dart';
import 'register.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Stack(
          children: [
            ClipPath(
              clipper: DrawClip(),
              child: Container(
                height: size.height,
                width: size.width,
                color: g,
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: Column(
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Container(height: 150, child: Image.asset('image/logo1.png')),
                  ToggleSwitch(
                      minWidth: 90.0,
                      minHeight: 50,
                      cornerRadius: 20.0,
                      activeBgColor: [g],
                      activeFgColor: Colors.greenAccent,
                      inactiveBgColor: gr,
                      inactiveFgColor: w,
                      initialLabelIndex: 0,
                      totalSwitches: 2,
                      labels: ['Login', 'Redister'],
                      radiusStyle: true,
                      onToggle: (index) {
                        print('Switched to: $index');
                        (index == 1)
                            ? Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Register()))
                            : Get.offNamed('/login');
                      }),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 40, top: 15, right: 50),
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: TextField(
                        keyboardType: TextInputType.phone,
                        cursorColor: g,
                        decoration: InputDecoration(
                            label: Text(
                              "Phone number",
                              style: TextStyle(color: gr),
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: gr,
                            )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: gr,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: g, width: 2)),
                            focusColor: gr),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 2, right: 50),
                    child: Container(
                      margin: EdgeInsets.all(8),
                      child: TextField(
                        obscureText: true,
                        keyboardType: TextInputType.visiblePassword,
                        cursorColor: g,
                        decoration: InputDecoration(
                            label: Text(
                              "Password",
                              style: TextStyle(color: gr),
                            ),
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                              color: gr,
                            )),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  color: gr,
                                )),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: g, width: 2)),
                            focusColor: gr,
                            suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility_outlined,
                              ),
                              onPressed: () {},
                            ),
                            suffixIconColor: gr),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 40, top: 2, right: 50),
                    child: Container(
                        child: ElevatedButton(
                            onPressed: () {
                              Get.to(HomePage());
                            },
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(g),
                                fixedSize: MaterialStateProperty.all(
                                    Size.fromWidth(300))),
                            child: Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                            ))),
                  ),
                ],
              ),
            ),
            ClipPath(
              clipper: DrawClip1(),
              child: Container(
                height: size.height,
                width: size.width,
                color: g,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(
        Rect.fromCircle(center: Offset(size.width * 0.13, -70), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

class DrawClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    Path path = Path();
    path.addOval(Rect.fromCircle(
        center: Offset(size.width, size.height * 1.1), radius: 200));
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}

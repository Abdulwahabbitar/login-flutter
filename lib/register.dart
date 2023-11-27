import 'package:flutter/material.dart';

import 'package:get/get.dart';
import '../../../main.dart';
import 'home_page.dart';
import 'login.dart';
import 'package:toggle_switch/toggle_switch.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

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
            ClipPath(
              clipper: DrawClip1(),
              child: Container(
                height: size.height,
                width: size.width,
                color: g,
              ),
            ),
            Container(
              height: size.height,
              width: size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 27,
                    ),
                    Container(
                        alignment: Alignment(0.8, -0.5),
                        height: 100,
                        child: Image.asset('image/logo1.png')),
                    ToggleSwitch(
                        minWidth: 90.0,
                        minHeight: 50,
                        cornerRadius: 20.0,
                        activeBgColor: [g],
                        activeFgColor: Colors.greenAccent,
                        inactiveBgColor: gra,
                        inactiveFgColor: w,
                        initialLabelIndex: 1,
                        totalSwitches: 2,
                        labels: ['Login', 'Redister'],
                        radiusStyle: true,
                        onToggle: (index) {
                          print('Switched to: $index');
                          (index == 0)
                              ? Get.offNamed('/login')
                              : Get.offNamed('/register');
                        }),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 40, top: 15, right: 50),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          cursorColor: g,
                          decoration: InputDecoration(
                              label: Text(
                                "Name",
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
                      padding:
                          const EdgeInsets.only(left: 40, top: 2, right: 50),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          cursorColor: g,
                          decoration: InputDecoration(
                              label: Text(
                                "Email",
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
                      padding:
                          const EdgeInsets.only(left: 40, top: 2, right: 50),
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
                      padding:
                          const EdgeInsets.only(left: 40, top: 2, right: 50),
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
                      padding:
                          const EdgeInsets.only(left: 40, top: 2, right: 50),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: TextField(
                          obscureText: true,
                          keyboardType: TextInputType.visiblePassword,
                          cursorColor: g,
                          decoration: InputDecoration(
                              label: Text(
                                "Confirm Password",
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
                      padding:
                          const EdgeInsets.only(left: 40, top: 2, right: 50),
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
                                  "Register",
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                              ))),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

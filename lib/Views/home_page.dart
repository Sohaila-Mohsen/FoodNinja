import 'package:cofood/core/components/Card_Logo_Text.dart';
import 'package:cofood/core/components/Logo.dart';
import 'package:cofood/core/components/custom_text_field.dart';
import 'package:cofood/core/style/app_colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey();
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/images/Pattern.png",
            fit: BoxFit.cover,
            width: MediaQuery.of(context).size.width,
          ),
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Form(
                key: _formKey,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        tileMode: TileMode.repeated,
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.white.withOpacity(0),
                          Colors.white.withOpacity(0.5),
                          Colors.white.withOpacity(0.8),
                          Colors.white.withOpacity(0.9),
                          Colors.white.withOpacity(1),
                          Colors.white,
                        ]),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Logo(),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "Login To Your Account",
                        style: TextStyle(
                            fontFamily: "BentonSans",
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      ),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Email is required";
                          } else if (!(value.contains("@") &&
                              value.contains(".com"))) {
                            return "Email is required";
                          } else {
                            return null;
                          }
                        },
                        label: "",
                        hint: "Email",
                      ),
                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Password is required";
                          } else {
                            return null;
                          }
                        },
                        label: "",
                        hint: "Password",
                      ),
                      const Text(
                        "Or Continue With",
                        style: TextStyle(
                            fontFamily: "BentonSans",
                            fontWeight: FontWeight.w700,
                            fontSize: 12),
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardLogoText(
                              cardTtext: "Facebook",
                              imagePath: "assets/images/facebook.png"),
                          CardLogoText(
                              cardTtext: "Google",
                              imagePath: "assets/images/google.png")
                        ],
                      ),
                      Text(
                        "Forgot Your Password?",
                        style: TextStyle(
                            color: mainColorLigtht,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline),
                      ),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              fixedSize: const Size(141, 57),
                              backgroundColor: mainColorLigtht),
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              const snackBar = SnackBar(
                                  content: Text("Loged in successfully !"));
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                            }
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(fontSize: 16),
                          )),
                      const SizedBox(
                        height: 10,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/signup_controller.dart';
import 'package:ecommerce_flutter/view/screens/auth/loginscreen.dart';
import 'package:ecommerce_flutter/view/screens/auth/widgets/separated_widget_row.dart';
import 'package:ecommerce_flutter/view/screens/auth/widgets/social_auth.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SignupControllerImplements signupController =
        Get.put(SignupControllerImplements());
    return Scaffold(
      appBar: DefaultAppBar(
        context: context,
        title: 'Create an Account',
        actions: [
          SizedBox(
            width: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30),
            child: TextButton(
                onPressed: () {},
                child: const Text(
                  'Skip',
                  style: TextStyle(color: AppColor.gry, fontSize: 16),
                )),
          )
        ],
        leading: IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.arrowLeft,
            color: AppColor.gry,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Form(
            key: signupController.formKeySignup,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              DefaultTextForm(
                  validate: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return 'Name Is Empty ';
                      }
                      return null;
                    }
                  },
                  onchange: (text) {},
                  controller: signupController.nameControler,
                  labeltext: 'Name',
                  type: TextInputType.name),
              const SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                  validate: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return 'Email Is Empty ';
                      }
                      return null;
                    }
                  },
                  onchange: (text) {
                    print(text);
                  },
                  controller: signupController.emailControler,
                  labeltext: 'Email',
                  type: TextInputType.emailAddress),
              const SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                  validate: (value) {
                    if (value != null) {
                      if (value.isEmpty) {
                        return 'phone Is Empty ';
                      }
                      return null;
                    }
                  },
                  onchange: (text) {},
                  controller: signupController.nameControler,
                  labeltext: 'Phone',
                  type: TextInputType.phone),
              const SizedBox(
                height: 20,
              ),
              DefaultTextForm(
                  validate: (value) {
                    if (value != null) {
                      if (value!.isEmpty) {
                        return 'Password Is Empty or Too Short';
                      }
                      return null;
                    }
                  },
                  onchange: (text) {},
                  isPassword: true,
                  sufxBtn: 'viewHide',
                  showPassfunc: () {},
                  controller: signupController.passControler,
                  labeltext: 'Password',
                  type: TextInputType.visiblePassword),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Minimum 8 Characters',
                    style: TextStyle(
                        color: AppColor.gry,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'one UpperCase and one Lowercase',
                    style: TextStyle(
                        color: AppColor.gry,
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Conditional.single(
                context: context,
                fallbackBuilder: (context) => const Center(
                  child: CircularProgressIndicator(
                    color: AppColor.gry,
                  ),
                ),
                conditionBuilder: (context) => true,
                widgetBuilder: (context) => DefaultButton(
                    text: 'Create Account',
                    isUperCase: false,
                    function: () {},
                    background: AppColor.gry,
                    radius: 30),
              ),
              const SizedBox(
                height: 25,
              ),
              const SeparatedWidgetDeviderAndText(),
              const SizedBox(
                height: 14,
              ),
              const SocialAuthLogin(),
              Center(
                child: InkWell(
                  splashColor: AppColor.gry,
                  onTap: () {
                    signupController.toSignin();
                  },
                  child: Text('if you have an account go to? Login',
                      style: TextStyle(
                          color: Color.fromARGB(255, 4, 143, 224),
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

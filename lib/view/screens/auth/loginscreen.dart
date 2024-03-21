import 'package:ecommerce_flutter/components/components.dart';
import 'package:ecommerce_flutter/controller/auth/login_controller.dart';
import 'package:ecommerce_flutter/core/class/app_color.dart';
import 'package:ecommerce_flutter/view/screens/auth/widgets/logo_widget.dart';
import 'package:ecommerce_flutter/view/screens/auth/widgets/separated_widget_row.dart';
import 'package:ecommerce_flutter/view/screens/auth/widgets/social_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_conditional_rendering/conditional.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    LoginControllerImplements loginControllerImplements =
        Get.put(LoginControllerImplements());

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('login'.tr),
        scrolledUnderElevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: loginControllerImplements.loginFormKey,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const LogoAuth(),
                  DefaultTextForm(
                      validate: (value) {
                        if (value != null) {
                          if (value.isEmpty) {
                            return 'Email Is Empty ';
                          }
                          return null;
                        }
                      },
                      controller: loginControllerImplements.emailControler,
                      labeltext: 'email'.tr,
                      type: TextInputType.emailAddress),
                  const SizedBox(
                    height: 25,
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
                      isPassword: true,
                      sufxBtn: 'view Hide',
                      showPassfunc: () {},
                      controller: loginControllerImplements.passControler,
                      labeltext: 'password'.tr,
                      type: TextInputType.visiblePassword),
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
                        text: 'login'.tr,
                        isUperCase: false,
                        function: () {},
                        background: AppColor.primary,
                        radius: 30),
                  ),
                  const SizedBox(
                    height: 14,
                  ),
                  InkWell(
                    splashColor: AppColor.gry,
                    onTap: () {
                      loginControllerImplements.toForgetPassword();
                    },
                    child: Text('forgetpass'.tr,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                            color: Color.fromARGB(255, 33, 31, 51),
                            fontSize: 18,
                            fontWeight: FontWeight.w300)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Center(
                    child: InkWell(
                      splashColor: AppColor.gry,
                      onTap: () {
                        loginControllerImplements.toSignup();
                      },
                      child: const Text('I Dont Have an Acount ? signup',
                          style: TextStyle(
                              color: Color.fromARGB(255, 66, 52, 222),
                              fontSize: 20,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SeparatedWidgetDeviderAndText(),
                  const SizedBox(
                    height: 14,
                  ),
                  const SocialAuthLogin(),
                ]),
          ),
        ),
      ),
    );
  }
}

import 'package:get/get.dart';

class MyTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'welcome': 'اهلا',
          'home': 'الرئيسية',
          'chooslang': 'اختيار اللغة',
          'login': 'تسجيل الدخول',
          'signup': 'تسجيل',
          'logout': 'خروج',
          'username': 'اسم المستخدم',
          'email': 'البريد الالكتروني',
          'phone': 'رقم الهاتف',
          'password': 'كلمة المرور',
          'forgetpass': 'نسيت كلمةالمرور؟',
        },
        'en': {
          'welcome': 'Welcome',
          'home': 'Home',
          'chooselang': 'Choose Language',
          'login': "Login",
          'signup': 'Signup',
          'logout': 'logout',
          'username': 'Username',
          'email': 'email',
          'phone': 'Phone',
          'password': 'Password',
          'forgetpass': 'Forget Password ?',
        }
      };
}

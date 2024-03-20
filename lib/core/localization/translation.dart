import 'package:get/get.dart';

class MyTranslations implements Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': {
          'welcome': 'اهلا',
          'home': 'الرئيسية',
          'login': 'تسجيل الدخول',
          'signup': 'تسجيل',
          'logout': 'خروج',
          'username': 'اسم المستخدم',
          'email': 'البريد الالكتروني',
          'phone': 'رقم الهاتف',
          'password': 'كلمة المرور',
        },
        'en': {
          'welcome': 'Welcome',
          'home': 'Home',
          'login': "Login",
          'signup': 'Signup',
          'logout': 'logout',
          'username': 'Username',
          'email': 'email',
          'phone': 'Phone',
          'password': 'Password',
        }
      };
}

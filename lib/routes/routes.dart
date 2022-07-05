import 'package:flutter/material.dart';
import 'package:telling/pages/auth/otp/otp_page.dart';
import 'package:telling/pages/auth/sign_in/sign_in_mail_page.dart';
import 'package:telling/pages/auth/sign_up/create_password_page.dart';
import 'package:telling/pages/auth/sign_up/select_topics_page.dart';
import 'package:telling/pages/auth/sign_up/sign_up_mail_page.dart';
import 'package:telling/pages/auth/sign_up/sign_up_page.dart';
import 'package:telling/pages/home/article_open_page.dart';
import 'package:telling/pages/home/edit_profile/components/settings.dart';
import 'package:telling/pages/home/edit_profile/edit_profile.dart';
import 'package:telling/pages/home/home_page.dart';
import 'package:telling/pages/home/profile/proflie.dart';
import 'package:telling/pages/auth/sign_in/sign_in_page.dart';
import 'package:telling/pages/welcome/welcome_page.dart';
import 'package:telling/routes/names.dart';

var routes = <String, WidgetBuilder>{
  NamesRoutes.signIn: (context) => const SignInPage(),
  NamesRoutes.signInMail: (context) => const SignInMailPage(),
  NamesRoutes.signUp: (context) => const SignUpPage(),
  NamesRoutes.signUpMail: (context) => SignUpMailPage(),
  NamesRoutes.home: (context) => HomePage(),
  NamesRoutes.editProfile: (context) => EditProfilePage(),
  NamesRoutes.profile: (context) => ProfilePage(),
  NamesRoutes.articleOpen: (context) => ArticleOpen(),
  NamesRoutes.settings: (context) => SettingsPage(),
  NamesRoutes.otp: (context) => OtpPage(),
  NamesRoutes.welcome: (context) => const WelcomePage(),
  NamesRoutes.createPassword: (context) => CreatePasswordPage(),
  NamesRoutes.selectTopics: (context) => SelectTopicsPage(),
};

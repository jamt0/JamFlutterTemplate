import 'package:animate_do/animate_do.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:telling/bloc/auth/auth_bloc.dart';
import 'package:telling/bloc/user/user_bloc.dart';
import 'package:telling/blocs/feed/feed_bloc.dart';
import 'package:telling/blocs/session/session_bloc.dart';
import 'package:telling/constants/assets.dart';
import 'package:telling/models/profile_model.dart';
import 'package:telling/pages/welcome/welcome_page.dart';
import 'package:telling/routes/routes.dart';
import 'package:telling/styles/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:telling/utils/helpers/app_locale.dart';
import 'blocs/topics/topics_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => SessionBloc(),
        ),
        BlocProvider(
          create: (context) => FeedBloc(),
        ),
        BlocProvider(
          create: (context) => TopicsBloc(),
        ),
        BlocProvider(
          create: (context) => UserBloc(),
        ),
        BlocProvider(
          create: (context) => AuthBloc(navigatorKey: navigatorKey),
        ),
      ],
      child: App(navigatorKey: navigatorKey),
    );
  }
}

class App extends StatelessWidget {
  App({Key? key, required this.navigatorKey}) : super(key: key);
  final GlobalKey<NavigatorState> navigatorKey;

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppLocale(),
      child: Consumer<AppLocale>(
        builder: (context, locale, child) {
          return MaterialApp(
            title: 'Telling',
            theme: AppTheme.light,
            locale: locale.locale,
            routes: routes,
            navigatorKey: navigatorKey,
            debugShowCheckedModeBanner: false,
            supportedLocales: AppLocalizations.supportedLocales,
            localizationsDelegates: AppLocalizations.localizationsDelegates,
            home: FutureBuilder(
              future: BlocProvider.of<SessionBloc>(context).loadUserProfile(),
              builder: (context, AsyncSnapshot<ProfileModel?> snapshot) {
                if (snapshot.hasError) {
                  return Container(
                    width: double.infinity,
                    height: double.infinity,
                    color: Theme.of(context).primaryColor,
                    child: Center(
                      child: Text(
                        snapshot.error.toString(),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                  );
                }

                if (snapshot.connectionState == ConnectionState.done) {
                  return BlocBuilder<SessionBloc, SessionState>(
                    builder: (context, state) {
                      Widget nextScreen = const WelcomePage();

                      return AnimatedSplashScreen(
                        splash: ElasticIn(
                          delay: const Duration(milliseconds: 800),
                          child: Swing(
                            delay: const Duration(milliseconds: 2000),
                            duration: const Duration(milliseconds: 500),
                            child: FadeOut(
                              delay: const Duration(milliseconds: 2700),
                              animate: true,
                              child: SizedBox(
                                width: 50,
                                child: SvgPicture.asset(
                                    Assets.svgTellingIconWhite),
                              ),
                            ),
                          ),
                        ),
                        splashTransition: SplashTransition.rotationTransition,
                        backgroundColor: AppTheme.light.primaryColor,
                        nextScreen: nextScreen,
                      );
                    },
                  );
                }

                return Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Theme.of(context).primaryColor,
                );
              },
            ),
          );
        },
      ),
    );
  }
}

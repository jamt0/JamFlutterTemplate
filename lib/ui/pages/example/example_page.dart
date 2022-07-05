import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:telling/data/bloc/example/example_bloc.dart';
import 'package:telling/data/bloc/example/example_event.dart';
import 'package:telling/data/bloc/example/example_state.dart';

class SignInMailPage extends HookWidget {
  const SignInMailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void signIn() {
      context.read<ExampleBloc>().add(
            ExampleRequest(
              params: 1,
            ),
          );
    }

    return Scaffold(
      body: BlocBuilder<ExampleBloc, ExampleState>(
        builder: (context, state) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Text(AppLocalizations.of(context)!.example),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

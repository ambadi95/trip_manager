import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_manager/core/components/custom_button.dart';
import 'package:trip_manager/core/components/custom_text_field.dart';
import 'package:trip_manager/features/auth/auth_bloc.dart';
import 'package:trip_manager/features/auth/auth_state.dart';
import 'package:trip_manager/features/dashboard/dashboard.dart';
import '../../core/theme/theme_notifier.dart';
import '../../core/utils.dart';
import 'auth_event.dart';

class Auth extends StatelessWidget {
  final ThemeNotifier themeNotifier;
   Auth({super.key, required this.themeNotifier});

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AuthBloc(),
        child: BlocListener<AuthBloc, AuthState>(listener: (context, state) {
          if (state is LoginSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Logged in!')),
            );
            navigateTo(context, const Dashboard());
          } else if (state is LoginFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.error)),
            );
          }
        }, child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
          if (state is LoginLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return SafeArea(
            child: Scaffold(
              appBar: PreferredSize(
                  preferredSize: const Size(double.infinity, 60),
                  child: SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(top: 12, right: 10),
                          child: Center(
                              child: Text(
                            'Mode',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          )),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Switch(
                            value: themeNotifier.isDarkMode,
                            onChanged: (value) {
                              themeNotifier.toggleTheme();
                            },
                          ),
                        ),
                      ],
                    ),
                  )),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CustomTextField(
                      controller: phoneController,
                      hintText: 'Phone Number',
                      keyboardType: TextInputType.phone,
                      onChange: (val) => {},
                    ),
                     CustomButton(
                      title: 'Continue',
                        onTap : (){
                          BlocProvider.of<AuthBloc>(context).add(
                            PhoneNumberSubmitted(phoneController.text),
                          );
                        }
                    )
                  ],
                ),
              ),
            ),
          );
        })));
  }
}

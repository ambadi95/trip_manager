import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trip_manager/core/components/custom_button.dart';
import 'package:trip_manager/core/components/custom_text_field.dart';
import 'package:trip_manager/core/components/space.dart';
import 'package:trip_manager/features/auth/auth_bloc.dart';
import 'package:trip_manager/features/auth/auth_state.dart';
import 'package:trip_manager/features/dashboard/dashboard.dart';
import '../../core/utils.dart';
import 'auth_event.dart';

class OtpScreen extends StatelessWidget {
  final String mobileNumber;
  OtpScreen({super.key, required this.mobileNumber});

  final TextEditingController otpController = TextEditingController();

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
              appBar: AppBar(),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'OTP',
                      style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                     const Space(height: 10),
                     Text(
                      'OTP is send to $mobileNumber',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    const Space(height: 10),
                    CustomTextField(
                      controller: otpController,
                      hintText: 'Enter OTP',
                      keyboardType: TextInputType.phone,
                      onChange: (val) => {},
                    ),
                     CustomButton(
                      title: 'Continue',
                        onTap : (){
                          BlocProvider.of<AuthBloc>(context).add(
                            OtpSubmitted(otpController.text),
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

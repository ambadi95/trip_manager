import 'dart:async';
// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:trip_manager/features/auth/auth_event.dart';
import 'package:trip_manager/features/auth/auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {

  AuthBloc() : super(LoginInitial()) {
    on<PhoneNumberSubmitted>(_onPhoneNumberSubmitted);
    on<OtpSubmitted>(_onOtpSubmitted);
  }

  bool _isValidPhoneNumber(String phoneNumber) {
    // Regex to validate international phone numbers
    final regex = RegExp(r'^\+?[1-9]\d{1,14}$');
    return regex.hasMatch(phoneNumber);
  }

  Future<void> _onPhoneNumberSubmitted(
      PhoneNumberSubmitted event, Emitter<AuthState> emit) async {
    final phoneNumber = event.phoneNumber.trim();

    if (phoneNumber.isEmpty) {
      emit(const LoginFailure("Phone number cannot be empty."));
      return;
    }

    if (!_isValidPhoneNumber(phoneNumber)) {
      emit(const LoginFailure("Invalid phone number format."));
      return;
    }

    emit(LoginLoading());
    try {
      emit(LoginSuccess());
      // await _firebaseAuth.verifyPhoneNumber(
      //   phoneNumber: phoneNumber,
      //   verificationCompleted: (PhoneAuthCredential credential) async {
      //     // Auto-retrieve scenario
      //     await _firebaseAuth.signInWithCredential(credential);
      //     emit(LoginSuccess());
      //   },
      //   verificationFailed: (FirebaseAuthException e) {
      //     emit(LoginFailure(e.message ?? "Verification failed"));
      //   },
      //   codeSent: (String verificationId, int? resendToken) {
      //     emit(OtpRequired(verificationId));
      //   },
      //   codeAutoRetrievalTimeout: (String verificationId) {},
      // );
    } catch (e) {
      emit(LoginFailure("Failed to verify phone number: ${e.toString()}"));
    }
  }

  Future<void> _onOtpSubmitted(OtpSubmitted event, Emitter<AuthState> emit) async {
    emit(LoginLoading());
    try {
      // final credential = PhoneAuthProvider.credential(
      //   verificationId: state is OtpRequired ? (state as OtpRequired).verificationId : "",
      //   smsCode: event.otp,
      // );
      //await _firebaseAuth.signInWithCredential(credential);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure("Failed to verify OTP: ${e.toString()}"));
    }
  }
}

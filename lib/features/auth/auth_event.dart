import 'package:equatable/equatable.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();

  @override
  List<Object?> get props => [];
}

// Event for entering phone number
class PhoneNumberSubmitted extends AuthEvent {
  final String phoneNumber;

  const PhoneNumberSubmitted(this.phoneNumber);

  @override
  List<Object?> get props => [phoneNumber];
}

// Event for verifying OTP
class OtpSubmitted extends AuthEvent {
  final String otp;

  const OtpSubmitted(this.otp);

  @override
  List<Object?> get props => [otp];
}

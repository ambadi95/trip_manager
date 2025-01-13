import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object?> get props => [];
}

// Initial state
class LoginInitial extends AuthState {}

// Loading state
class LoginLoading extends AuthState {}

// State for requiring OTP
class OtpRequired extends AuthState {
  final String verificationId;

  const OtpRequired(this.verificationId);

  @override
  List<Object?> get props => [verificationId];
}

// Login success state
class LoginSuccess extends AuthState {}

// Login failure state
class LoginFailure extends AuthState {
  final String error;

  const LoginFailure(this.error);

  @override
  List<Object?> get props => [error];
}

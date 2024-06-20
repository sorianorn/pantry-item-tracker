part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthStateInitial extends AuthState {
  final bool isLoggedIn;

  AuthStateInitial({required this.isLoggedIn});
}

class LoginState {
  final String email;
  final String password;
  final bool isValid;

  const LoginState({this.email = '', this.password = '', this.isValid = false});

  LoginState copyWith({
    String? email,
    String? password,
    bool? isValid,
  }) {
    return LoginState(
      email: email ?? this.email,
      password: password ?? this.password,
      isValid: isValid ?? this.isValid,
    );
  }
}

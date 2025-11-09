import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<EmailChanged>((event, emit) {
      final email = event.email;
      emit(state.copyWith(
        email: email,
        isValid: email.isNotEmpty && state.password.isNotEmpty,
      ));
    });
    on<PasswordChanged>((event, emit) {
      final password = event.password;
      emit(state.copyWith(
        password: password,
        isValid: state.email.isNotEmpty && password.isNotEmpty,
      ));
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/domain/usecases/auth/login_usecase.dart';
import 'package:flutter_clean_architecture/presentation/view/login/bloc/login_event.dart';
import 'package:flutter_clean_architecture/presentation/view/login/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;

  LoginBloc(this._loginUseCase) : super(const LoginLoading()) {
    on<LoginEvent>(onLogin);
  }

  void onLogin(LoginEvent event, Emitter<LoginState> emit) async {
    final dataState = await _loginUseCase(
      LoginParams(email: event.email, password: event.password),
    );

    if (dataState is DataSuccess && dataState.data != null) {
      emit(LoginSuccess(dataState.data!));
    }

    if (dataState is DataError) {
      emit(LoginFailure(dataState.error!));
    }
  }
}

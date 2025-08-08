import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/data/data_source/remote/remote_auth_service.dart';
import 'package:flutter_clean_architecture/domain/entities/token.dart';
import 'package:flutter_clean_architecture/domain/repository/auth/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final RemoteAuthService _remoteAuthService;

  AuthRepositoryImpl(this._remoteAuthService);

  @override
  Future<DataState<TokenEntity>> login({
    required String email,
    required String password,
  }) {
    // TODO: implement login
    throw UnimplementedError();
  }

  @override
  Future<DataState<TokenEntity>> logout({required String userId}) {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<DataState<TokenEntity>> register({
    required String email,
    required String password,
  }) {
    // TODO: implement register
    throw UnimplementedError();
  }

  @override
  Future<DataState<TokenEntity>> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }
}

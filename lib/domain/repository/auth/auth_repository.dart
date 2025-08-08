import 'package:flutter_clean_architecture/core/resources/data_state.dart';
import 'package:flutter_clean_architecture/domain/entities/token.dart';

abstract class AuthRepository {
  Future<DataState<TokenEntity>> login({
    required String email,
    required String password,
  });

  Future<DataState<TokenEntity>> register({
    required String email,
    required String password,
  });

  Future<DataState<TokenEntity>> logout({required String userId});

  Future<DataState<TokenEntity>> resetPassword({required String email});
}

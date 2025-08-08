import 'package:flutter_clean_architecture/data/models/auth/token.dart';
import 'package:retrofit/retrofit.dart';

abstract class AuthDataSource {
  Future<HttpResponse<TokenModel>> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  Future<HttpResponse<TokenModel>> register({
    @Field('email') required String email,
    @Field('password') required String password,
  });
}

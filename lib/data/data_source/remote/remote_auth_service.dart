import 'package:dio/dio.dart';
import 'package:flutter_clean_architecture/data/data_source/auth_data_source.dart';
import 'package:flutter_clean_architecture/data/models/auth/token.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_auth_service.g.dart';

@RestApi()
@Injectable(as: RemoteAuthService)
abstract class RemoteAuthService implements AuthDataSource {
  @factoryMethod
  factory RemoteAuthService(Dio dio) = _RemoteAuthService;

  @override
  @POST('/account/login')
  Future<HttpResponse<TokenModel>> login({
    @Field('email') required String email,
    @Field('password') required String password,
  });

  @override
  @POST('/account/register')
  Future<HttpResponse<TokenModel>> register({
    @Field('email') required String email,
    @Field('password') required String password,
  });
}

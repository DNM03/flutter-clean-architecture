import 'package:flutter_clean_architecture/domain/entities/token.dart';
import 'package:json_annotation/json_annotation.dart';

part 'token.g.dart';

@JsonSerializable()
class TokenModel extends TokenEntity {
  const TokenModel({
    String? userId,
    String? token,
    String? tokenExpires,
    String? refreshToken,
    String? refreshTokenExpires,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) => TokenModel(
    userId: json['userId'] as String? ?? '',
    token: json['token'] as String? ?? '',
    tokenExpires: json['tokenExpires'] as String? ?? '',
    refreshToken: json['refreshToken'] as String? ?? '',
    refreshTokenExpires: json['refreshTokenExpires'] as String? ?? '',
  );
}

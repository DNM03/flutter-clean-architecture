import 'package:equatable/equatable.dart';

class TokenEntity extends Equatable {
  final String? userId;
  final String? token;
  final DateTime? tokenExpires;
  final String? refreshToken;
  final DateTime? refreshTokenExpires;

  const TokenEntity({
    this.userId,
    this.token,
    this.tokenExpires,
    this.refreshToken,
    this.refreshTokenExpires,
  });

  @override
  List<Object?> get props => [
    userId,
    token,
    tokenExpires,
    refreshToken,
    refreshTokenExpires,
  ];
}

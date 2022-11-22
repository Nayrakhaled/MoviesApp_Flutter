import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int statueCode;
  final String statusMessage;
  final bool success;

  const ErrorMessageModel({
    required this.statueCode,
    required this.statusMessage,
    required this.success,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) {
    return ErrorMessageModel(
        statueCode: json["status_code"],
        statusMessage: json["status_message"],
        success: json["success"]);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [statueCode, statusMessage, success];
}

import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class MainFailures with _$MainFailures {
  const factory MainFailures.clientFailure({
    required final String responseMessage,
  }) = _ClientFailure;

  const factory MainFailures.serverFailure() = _ServerFailure;
}

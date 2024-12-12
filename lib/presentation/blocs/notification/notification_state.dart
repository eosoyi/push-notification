part of 'notification_bloc.dart';

class NotificationState extends Equatable {

  final AuthorizationStatus status;
  final List<PushMessage> notifications;

  const NotificationState({
    this.status = AuthorizationStatus.notDetermined,
    this.notifications = const []
  });

  NotificationState copyWith({
    AuthorizationStatus? status,
    List<PushMessage>? notification
  }) => NotificationState(
    status: status ?? this.status,
    notifications: notification ?? notifications
  );

  @override
  List<Object> get props => [status, notifications];
}


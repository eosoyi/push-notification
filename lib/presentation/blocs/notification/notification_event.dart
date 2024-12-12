part of 'notification_bloc.dart';

abstract class NotificationEvent {
  const NotificationEvent();
}

class NotificationStatusChanged extends NotificationEvent {
  final AuthorizationStatus status;

  NotificationStatusChanged(this.status);
}

class NotificationReceived extends NotificationEvent {
  final PushMessage pushMessage;

  NotificationReceived(this.pushMessage);
}

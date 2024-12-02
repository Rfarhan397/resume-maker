import 'package:equatable/equatable.dart';

abstract class OnboardingEvent extends Equatable {
  const OnboardingEvent();

  @override
  List<Object> get props => [];
}

class OnboardingNextPage extends OnboardingEvent {}

class OnboardingPreviousPage extends OnboardingEvent {}

class OnboardingPageUpdate extends OnboardingEvent {
  final int pageIndex;

  const OnboardingPageUpdate(this.pageIndex);

  @override
  List<Object> get props => [pageIndex];
}

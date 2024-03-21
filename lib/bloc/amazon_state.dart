part of 'amazon_bloc.dart';

@immutable
abstract class AmazonState {}

class AmazonInitial extends AmazonState {}
class AmazonBlocLoading extends AmazonState{}
class Amaz0nBlocloaded extends AmazonState{}
class AmazonBlocError extends AmazonState{}
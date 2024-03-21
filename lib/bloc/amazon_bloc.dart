import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../Repository/api/api_sample.dart';
import '../Repository/model_class/project_amazon.dart';

part 'amazon_event.dart';
part 'amazon_state.dart';

class AmazonBloc extends Bloc<AmazonEvent, AmazonState> {
  late ProjectAmazon amazon;
  amazon1 sampleamazon=amazon1();
  AmazonBloc() : super(AmazonInitial()) {
    on<AmazonEvent>((event, emit)async {emit(AmazonBlocLoading());
    try{
      amazon =await sampleamazon.getAnime();
      emit(Amaz0nBlocloaded());
    } catch(e){
      print(e);
      emit(AmazonBlocError());}
    });
      // TODO: implement event handler

  }
}

import 'package:beginner_th_ptoject/modules/counter/cubit/state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState>
{
  CounterCubit() : super(CounterInitialState());
  static CounterCubit get(context)=>BlocProvider.of(context);


  int teamAPoints = 0;

  int teamBPoints = 0;


  void teamAIncrement({ required int buttonNumber})
  {
    teamAPoints +=buttonNumber;
    emit(CounterAIncrementState());
  }

  void teamBIncrement({required int buttonNumber})
  {
    teamBPoints +=buttonNumber;
    emit(CounterBIncrementState());
  }

}
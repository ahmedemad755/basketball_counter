import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterA());
  int teamAPoints = 0;
  int teamBPoints = 0;
  void incrtementA({required String team, required int buttomnum}) {
    if (team == "A") {
      teamAPoints += buttomnum;
      emit(CounterA());
    } else {
      teamBPoints += buttomnum;
      emit(CounterB());
    }
  }

  void resetcounter() {
    teamAPoints = 0;
    teamBPoints = 0;
    // emit(Reset as CounterState);
  }
}

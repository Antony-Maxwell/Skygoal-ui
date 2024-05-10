import 'package:bloc/bloc.dart';

part 'indicator_controller_event.dart';
part 'indicator_controller_state.dart';

class PageIndicatorBloc extends Bloc<PageIndicatorEvent, PageIndicatorState> {
  PageIndicatorBloc() : super(PageIndicatorState()) {
    on<PageIndicatorEvent>((event, emit) {
      emit(PageIndicatorState(page: state.page));
    });
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';

import 'enter _your_number_state.dart';

class EnterYourNumberCubit extends Cubit<EnterYourNumberState> {
  EnterYourNumberCubit() :super(IntialEnterYourNumberState());
  var dropdownValue = '+20';
  static EnterYourNumberCubit get(context) => BlocProvider.of(context);

  void changeValueOfDropDownMethod(String newValue) {
    dropdownValue=newValue;
    emit(ChangeValueOfDropDownState());
  }
}
import 'package:docdoc_app/Features/Register/Logic/enter_your_number_cubit/enter%20_your_number_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EnterYourNumberCubit extends Cubit<EnterYourNumberState> {
  EnterYourNumberCubit() :super(IntialEnterYourNumberState());
  var dropdownValue = '+20';
  static EnterYourNumberCubit get(context) => BlocProvider.of(context);

  void changeValueOfDropDownMethod(String newValue) {
    dropdownValue=newValue;
    emit(ChangeValueOfDropDownState());
  }
}
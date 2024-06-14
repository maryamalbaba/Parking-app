import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:parkingapp/core/domain/models/Signup.dart';
import 'package:parkingapp/core/domain/models/basic_model.dart';
import 'package:parkingapp/core/domain/services/mock_service/mock_ser.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  SignupBloc() : super(SignupInitial()) {
    on<Signedup>((event, emit) async{
      MockSign m=MockSign();
      var result=await m.sign_service(event.user);
      if (result is Successmodel) {
        print("hi i am in success in bloc");
        emit(SuccessSignup_state());
      } 
      else if (result is Erorr) {
        print("hi i am in Error in bloc");
        emit(Erorr());
      }
      else {
          print("ops i am in Exception in bloc");
        emit(Exception(

        ));
      }
    });
  }
}

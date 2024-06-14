import 'package:dio/dio.dart';
import 'package:parkingapp/core/domain/models/Signup.dart';
import 'package:parkingapp/core/domain/models/basic_model.dart';

class UserService {

Future<ResultModel>sign_service(Signupmodel user) async{
  Dio dio=Dio();
  String baseurl="";

try{
  Response response=await  dio.post(baseurl,data:user.toMap() );
  if (response.statusCode==200) {
    return Successmodel();
    
  } else {
     return ErrorModel();
  }
}
on DioException catch(e){
  return ExceptionModel();
}
}

}
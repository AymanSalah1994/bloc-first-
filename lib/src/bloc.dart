import 'dart:async';
typedef void OnLoginCallback(String username, String password);
class bloc {
  final  emailController = StreamController<String>();
  final passwordController = StreamController<String>();


  // Change/Set data
  Function(String) get changeEmail => emailController.sink.add;
  // Function(String) get changeEmail {
  //   return emailController.sink.add;
  // }
  Function(String) get changePassword => passwordController.sink.add;


  // Add data to stream
  Stream<String> get email => emailController.stream ; 
  // .transform(validateEmail);
  Stream<String> get password => passwordController.stream ; 
  // .transform(validatePassword);



  // dispose() {
  //   _emailController.close();
  //   _passwordController.close();
  // }
}
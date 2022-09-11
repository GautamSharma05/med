import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:med/features/screens/loginscreen/repo/login_repo.dart';
import '../features/screens/signupscreen/repo/signup_repo.dart';

final signUpProvider = ChangeNotifierProvider<SignUpRepo>((ref) {
  return SignUpRepo();
});

final loginProvider = ChangeNotifierProvider<LoginRepo>((ref) {
  return LoginRepo();
});

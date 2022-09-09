class Validation{
static String? validateEmail(String? value) {
  String pattern =
      r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
      r"{0,253}[a-zA-Z0-9])?)*$";
  RegExp regex = RegExp(pattern);
  if (value == null || value.isEmpty || !regex.hasMatch(value)) {
    return 'Enter a valid email address';
  } else {
    return null;
  }
}

static String? validatePassword( value) {
  RegExp regex =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
  if (value.isEmpty) {
    return 'Please enter password';
  } else {
    if (!regex.hasMatch(value)) {
      return 'Enter valid password contain one @1hH#Dd@3';
    } else {
      return null;
    }
  }
}

static String? validateMobile(value) {
  if (value.isEmpty) {
    return 'Please enter mobile number';
  } else {
    return null;
  }
}

static String? validateName(value) {
  if (value.isEmpty) {
    return 'Please enter Full Name';
  } else {
    return null;
  }
}


}
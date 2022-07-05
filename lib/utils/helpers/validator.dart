mixin Validator {
  static final RegExp _email = RegExp(
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
  );
  static final RegExp _password = RegExp(
    r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$',
  );
  static final RegExp _number = RegExp(r'^[0-9]+$');

  static final RegExp _name = RegExp(r'^[A-Za-zÀ-ú ]+$');

  static final RegExp _userName = RegExp(r'^[A-Za-zÀ-ú0-9 ]+$');

  static final RegExp _phone = RegExp(r'^[0-9]{6,13}$');

  static final RegExp _code = RegExp(r'^\d{4,5}$');

  static bool isValidEmail(String email) {
    return email.isNotEmpty && _email.hasMatch(email);
  }

  static bool isValidCode(String code) {
    return code.isNotEmpty && _code.hasMatch(code);
  }

  static bool isValidPassword(String password) {
    return password.isNotEmpty && _password.hasMatch(password);
  }

  static bool isValidConfirmedPassword(
      String password, String confirmedPassword) {
    return password == confirmedPassword;
  }

  static bool isValidName(String name) {
    return name.isNotEmpty && _name.hasMatch(name);
  }

  static bool isValidUserName(String userName) {
    return userName.isNotEmpty && _userName.hasMatch(userName);
  }

  static bool isValidPhone(String phone) {
    return phone.isNotEmpty && _phone.hasMatch(phone);
  }

  static bool isValidDni(String dni) {
    return dni.isNotEmpty && _number.hasMatch(dni);
  }
}

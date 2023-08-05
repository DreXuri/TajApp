class InputValidator {
  InputValidator._();

  static String? noValidate({required String value}) {
    return null;
  }

  static String? validateEmpty({required String value, String? message}) {
    if (value.trim().isEmpty) {
      return message ?? 'Field should not be empty';
    }
    return null;
  }

  static String? validatePassword({required String value, String? message}) {
    if (value.trim().isEmpty) {
      return message ?? 'Field should not be empty';
    } else if (value.length < 6) {
      return message ?? 'Password should be greater than 6 characters';
    } else if (!RegExp(
      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&^*~]).{8,}$',
    ).hasMatch(value)) {
      return message ?? 'Invalid password';
    }
    return null;
  }

  static String? validateEmail({required String value, String? message}) {
    if (value.trim().isEmpty) {
      return message ?? 'Invalid Email';
    } else if (!RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(value)) {
      return message ?? 'Invalid email';
    }
    return null;
  }
}

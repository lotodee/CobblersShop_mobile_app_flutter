class TValidator {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }
    //regular expression for Email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
//check for minmum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long';
    }
    //check for special characters regex fromGPT

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'PhoneNumber is required';
    }

    //regular expressions for phone number validation assuming a 10-digits phone number
    final phoneRedExp = RegExp(r'^\d{10}$');

    if (!phoneRedExp.hasMatch(value)) {
      return 'Invalid Phone number format 10 digits required';
    }
    return null;
  }

//Add more custom validators as needed for specific requirements
}

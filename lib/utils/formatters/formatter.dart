import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy')
        .format(date); //customize date format as required
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(locale: 'en-US', symbol: '\$').format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Assuming a 10-digit US phone number format :(123) 456 -7890
    if (phoneNumber.length < 8) {
      throw "invalid phone Number";
    }
    if (phoneNumber.length == 10) {
      return '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
    } else if (phoneNumber.length == 11) {
      return '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
    }
    // Add more custom phone number formatting logic for different formats if needed

    return phoneNumber;
  }

  static String internationalPhoneNumber(String phoneNumber) {
    //to ensure it contains only digits
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract country code from the digits Only
    String countryCode = '+${digitsOnly.substring(0, 2)}';

    digitsOnly = digitsOnly.substring(2);

    //Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('${countryCode}');

    int i = 0;
    while (i < digitsOnly.length) {
      int groupLength = 2;
      if (i == 0 && countryCode == '+1') {
        groupLength = 3;
      }
      int end = i + groupLength;
      formattedNumber.write(digitsOnly.substring(i, end));

      if (end < digitsOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
    return phoneNumber;
  }
}

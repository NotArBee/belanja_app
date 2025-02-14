import 'package:intl/intl.dart';

class TFormatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy')
        .format(date); // Customize the date format as needed
  }

  static String formatCurrency(double amount) {
    return NumberFormat.currency(
            locale: 'id_ID', symbol: 'Rp', decimalDigits: 0)
        .format(amount); // Customize the currency locale and symbol as needed
  }

  static String formatPhoneNumber(String phoneNumber) {
    // Menghapus spasi dan tanda baca yang tidak diperlukan
    phoneNumber = phoneNumber.replaceAll("[^\\d]", "");

    // Memeriksa apakah nomor dimulai dengan '0' dan menggantinya dengan '+62'
    if (phoneNumber.startsWith("0")) {
      phoneNumber = "+62" + phoneNumber.substring(1);
    } else if (!phoneNumber.startsWith("+62")) {
      // Jika nomor tidak dimulai dengan '+62' atau '0', anggap sudah dalam format internasional
      return phoneNumber;
    }

    // Memformat nomor telepon Indonesia
    if (phoneNumber.length == 13) {
      // Contoh: +6281234567890 menjadi +62 812-3456-7890
      return phoneNumber.substring(0, 3) +
          " " +
          phoneNumber.substring(3, 6) +
          "-" +
          phoneNumber.substring(6, 10) +
          "-" +
          phoneNumber.substring(10);
    } else if (phoneNumber.length == 12) {
      // Contoh: +628123456789 menjadi +62 812-345-6789
      return phoneNumber.substring(0, 3) +
          " " +
          phoneNumber.substring(3, 6) +
          "-" +
          phoneNumber.substring(6, 9) +
          "-" +
          phoneNumber.substring(9);
    }
    // Tambahkan logika pemformatan lainnya jika diperlukan
    return phoneNumber;
  }

  // Not fully tested.
  static String internationalFormatPhoneNumber(String phoneNumber) {
    // Remove any non-digit characters from the phone number
    var digitsOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    // Extract the country code from the digitsOnly
    String countryCode = '+${digitsOnly.substring(0, 2)}';
    digitsOnly = digitsOnly.substring(2);

    // Add the remaining digits with proper formatting
    final formattedNumber = StringBuffer();
    formattedNumber.write('($countryCode) ');

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

    return formattedNumber.toString();
  }
}
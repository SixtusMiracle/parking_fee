// importing dart:io library
import 'dart:io';

void main() {
  // parking_fee.dart @authors -Miralo
   /**************************************************************************
   * (C) Copyright 2021 by Mirolic                                           *
   * All Rights Reserved.                                                    *
   *                                                                         *
   * DISCLAIMER: The author(s) have worked hard to come up with this         *
   * masterpiece. The author(s) shall not be liable in any event for         *
   * incidental or consequential damages related to, or arising out of, the  *
   * furnishing, performance, or use of these programs.                      *
   ***************************************************************************/
  print('');
  print('How many hours has the car been parked?');
  // ignore: omit_local_variable_types
  var hoursParked;
  try {
    hoursParked = int.parse(stdin.readLineSync()!);
    calculateFee(hoursParked);
  } on FormatException {
    print('Invalid input, please try again!');
  }
}

void printFee(double fee) {
  print('-----------------------------------------------');
  print('The parking fee is \$${fee.toStringAsFixed(2)}');
}

void calculateFee(int hoursParked) {
  double fee = 0;

  double hours = hoursParked.toDouble();

  if (hours > 0 && hours <= 5) {
    fee = hours;
    printFee(fee);
  } else if (hours > 5 && hours < 24) {
    double minusFive = hours - 5;
    fee = 5 + (minusFive * 0.5);
    printFee(fee);
  } else if (hours == 24) {
    fee = 15;
  } else if (hours > 5 && hours > 24) {
    double days = hours / 24;
    double minusDay = hours - (days.toInt() * 24);
    fee = (days.toInt() * 15) + (minusDay * 0.5);
    printFee(fee);
  } else if (hours <= 0) {
    print('Invalid input, please try again!');
  }
}

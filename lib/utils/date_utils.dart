DateTime stringToDateTime(String date) =>
    date.isNotEmpty ? DateTime.parse(date) : DateTime.now();

String dateTimeToString(DateTime date) => '';

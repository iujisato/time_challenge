function wordsHash(key) {
  words_hash = {
    0: "o' clock",
    1: "one",
    2: "two",
    3: "three",
    4: "four",
    5: "five",
    6: "six",
    7: "seven",
    8: "eight",
    9: "nine",
    10: "ten",
    11: "eleven",
    12: "twelve",
    13: "thirteen",
    14: "fourteen",
    15: "quarter",
    16: "sixteen",
    17: "seventeen",
    18: "eighteen",
    19: "nineteen",
    20: "twenty",
    21: "twenty one",
    22: "twenty two",
    23: "twenty three",
    24: "twenty four",
    25: "twenty five",
    26: "twenty six",
    27: "twenty seven",
    28: "twenty eight",
    29: "twenty nine",
    30: "half"
  };

  return words_hash[key]
}

function pluralize(number) {
  switch (number) {
    case 1:
      return wordsHash(number) + " minute";

    case 15:
    case 30:
     return wordsHash(number);

    default:
      return wordsHash(number) + " minutes";
  };
}

function wordParser(time) {
  switch (true) {
    case (time.minute == 0):
      return wordsHash(time.hour) + " " + wordsHash(time.minute);

    case (time.minute <= 30):
      return pluralize(time.minute) + " past " + wordsHash(time.hour);

    case (time.minute > 30):
      new_minute = 60 - time.minute;
      new_hour = time.hour + 1;
      if (time.hour == 12) {
        new_hour = 1
      }
      return pluralize(new_minute) + " to " + wordsHash(new_hour);
  }
}

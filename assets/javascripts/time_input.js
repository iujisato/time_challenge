function hour(value) {
  var value = parseInt(document.getElementById("hour").value);
    if (isNaN(value)) {
      alert ("Hour is not a integer.");
      return time.hour = NaN;
      }

    if (value < 1 | value > 12) {
      alert("Hour must be between 1 and 12.");
      return time.hour = NaN;
    }

  time.hour = value;
};

function minute(value) {
  var value = parseInt(document.getElementById("minute").value);
    if (isNaN(value)) {
      alert ("Minute is not a integer.");
      return time.minute = NaN;
      }

    if (value < 0 | value > 60) {
      alert("Minute must be between 0 and 60.");
      return time.minute = NaN;
    }

  time.minute = value;
};

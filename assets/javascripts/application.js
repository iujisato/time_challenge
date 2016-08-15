var time = {};

function submitTime() {
  hour();
  minute();
  document.getElementById("hour").value = '';
  document.getElementById("minute").value = '';
  if (isNaN(time.hour) | isNaN(time.minute)) {
    return;
  } else {
    alert(wordParser(time));
  }
}

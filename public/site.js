function validateForm() {
  var x = document.forms["rpsForm"]["name"].value;
  if (x == "") {
      alert("Name must be filled out");
      return false;
  }
}

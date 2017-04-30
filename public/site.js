function validateForm() {
  var x = document.forms["rpsForm"]["name1"].value;
  if (x == "") {
      alert("Name must be filled out");
      return false;
  }
}


function validateForm_2() {
  var x = document.forms["rpsForm_2"]["name1"].value;
  var y = document.forms["rpsForm_2"]["name2"].value;
  var z = document.forms["rpsForm_2"]["weapon1"].value;
  var a = document.forms["rpsForm_2"]["weapon2"].value;
  if (x == "" || y == "" || z == "" || a == "" ) {
      alert("All form fields must be filled out");
      return false;
  }
}

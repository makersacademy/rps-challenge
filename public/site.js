function validate_form() {
  var x = document.forms["rps_form"]["name1"].value;
  if (x == "") {
      alert("Name must be filled out");
      return false;
  }
}


function validate_form_2() {
  var x = document.forms["rps_form_2"]["name1"].value;
  var y = document.forms["rps_form_2"]["name2"].value;
  var z = document.forms["rps_form_2"]["weapon1"].value;
  var a = document.forms["rps_form_2"]["weapon2"].value;
  if (x == "" || y == "" || z == "" || a == "" ) {
      alert("All form fields must be filled out");
      return false;
  }
}
